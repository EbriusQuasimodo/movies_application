import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/bloc/movie_screen_bloc/movie_screen_bloc.dart';
import 'package:movies_app/models/movie_model.dart';
import 'package:movies_app/resources/movie_repository/movie_repository.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  final MovieRepository movieRepository = MovieRepository();

  late final MovieScreenBloc _bloc =
      MovieScreenBloc(movieRepository: movieRepository)
        ..add(GetMoviesEvent(shouldShowProgress: true));
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(
      () {
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent) {
          _bloc.add(GetMoviesEvent(shouldShowProgress: false));
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  void _onMovieTap(int index) {
    final id = _bloc.state.loadMovies[index].id;
    Navigator.of(context)
        .pushNamed('/home_screen/movie_details_screen', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => _bloc,
        child: _movieBloc(context),
      ),
    );
  }

  Widget _movieBloc(BuildContext context) {
    return BlocBuilder<MovieScreenBloc, MovieScreenState>(
      builder: (context, state) {
        if (state.status == MovieStatus.error) {
          return const Text('error');
        }
        if (state.status == MovieStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.status == MovieStatus.success) {
          return GridView.builder(
            controller: scrollController,
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 290,
            ),
            itemCount: state.loadMovies.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildMovieItemTest(
                  context, state.loadMovies[index], index);
            },
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget _buildMovieItemTest(
      BuildContext context, MovieModel element, int index) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            child: GestureDetector(
              onTap: () => _onMovieTap(index),
              child: element.poster?.previewUrl == null
                  ? Container(
                      color: Colors.black12,
                    )
                  : Image.network(element.poster?.previewUrl ?? ''),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          element.name ?? '',
          style: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          element.year?.toString() ?? '',
          style: const TextStyle(
            color: Colors.black26,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
