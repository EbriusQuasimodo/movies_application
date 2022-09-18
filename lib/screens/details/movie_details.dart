import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/bloc/movie_details_bloc/movie_details_bloc.dart';
import 'package:movies_app/models/movie_details_model.dart';
import 'package:movies_app/resources/movie_repository/movie_repository.dart';

class MovieDetails extends StatefulWidget {
  final int movieId;

  const MovieDetails({
    Key? key,
    required this.movieId,
  }) : super(key: key);

  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  final MovieRepository movieRepository = MovieRepository();

  late final MovieDetailsBloc _bloc = MovieDetailsBloc(
      movieRepository: movieRepository, movieId: widget.movieId)
    ..add(GetMovieDetailsEvent());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        elevation: 0,
        title: Text(
          'Детали фильма',
          style: TextStyle(color: Colors.pink[100]),
        ),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (_) => _bloc,
        child: _detailsBloc(context),
      ),
    );
  }

  Widget _detailsBloc(BuildContext context) {
    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      builder: (context, state) {
        if (state.status == MovieDetailsStatus.error) {
          return const Text('error');
        }
        if (state.status == MovieDetailsStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.status == MovieDetailsStatus.success) {
          return ListView(
            children: [
              _buildMainInfo(context, state.loadedMovie!),
              _favoritesButton(),
              _movieDescription(
                  context, state.loadedMovie!, state.loadedMovie!.genres),
              _buildCastList(context, state.loadedMovie!),
              SizedBox(
                height: 340,
                child: Scrollbar(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    scrollDirection: Axis.horizontal,
                    itemCount: state.loadedMovie!.persons.length,
                    itemExtent: 170,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildActorItem(
                          context, state.loadedMovie!.persons[index]);
                    },
                  ),
                ),
              ),
            ],
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget _buildMainInfo(BuildContext context, MovieDetailsModel element) {
    final rating = element.rating?.imdb.toString() ?? '';
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              child: element.poster?.previewUrl == null
                  ? Container(
                      color: Colors.pink,
                    )
                  : Image.network(element.poster?.previewUrl ?? ''),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  element.name ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  element.year.toString(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.black38,
                  ),
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'рейтинг imdb: $rating',
                    style: const TextStyle(
                      color: Colors.black38,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _favoritesButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.pink[100]),
          ),
          child: const Text(
            "Добавить в избранное",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _movieDescription(BuildContext context, MovieDetailsModel element,
      List<GenresDetailsModel> elementGenre) {
    final String textGenres = elementGenre.map((e) => e.name).join(', ');
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Описание",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 10),
          element.description == null
              ? const SizedBox.shrink()
              : Text(
                  element.description ?? '',
                  style: const TextStyle(
                    color: Colors.black38,
                    fontSize: 16,
                  ),
                ),
          const SizedBox(height: 15),
          const Text(
            "Жанры",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            textGenres,
            style: const TextStyle(
              color: Colors.black38,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCastList(BuildContext context, MovieDetailsModel element) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 15),
          child: Text(
            'Команда',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildActorItem(
      BuildContext context, PersonsDetailsModel elementPerson) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.pink.shade50,
          border: Border.all(
            color: Colors.pink.shade50.withOpacity(0.2),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.pink.shade500.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          clipBehavior: Clip.hardEdge,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Image.network(
                  elementPerson.photo,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.only(left: 3, right: 3),
                child: SizedBox(
                  height: 70,
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          elementPerson.name,
                          maxLines: 2,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          elementPerson.description ?? '',
                          maxLines: 2,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black38,
                          ),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
