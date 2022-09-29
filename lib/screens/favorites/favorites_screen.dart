import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movies_app/bloc/favorites_screen_bloc/favorites_screen_bloc.dart';
import 'package:movies_app/models/favorites_screen_model.dart';
import 'package:movies_app/resources/movie_repository/movie_repository.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final MovieRepository movieRepository = MovieRepository();

  late final FavoritesScreenBloc _bloc =
      FavoritesScreenBloc(movieRepository: movieRepository)
        ..add(GetFavoritesMoviesEvent(shouldShowProgress: true));

  void _onMovieTap(int index) {
    final id = _bloc.state.favoritesMovies[index].movieId;
    Navigator.of(context).pushNamed('/movie_details_screen', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => _bloc,
        child: _favoritesMoviesBloc(context),
      ),
    );
  }

  Widget _favoritesMoviesBloc(BuildContext context) {
    return BlocBuilder<FavoritesScreenBloc, FavoritesScreenState>(
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
          return ValueListenableBuilder(
            valueListenable:
                Hive.box<FavoritesScreenModel>('favorites_movie').listenable(),
            builder: (context, Box<FavoritesScreenModel> favorites, _) {
              return GridView.builder(
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 290,
                ),
                itemCount: state.favoritesMovies.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildMovieItem(
                      context, state.favoritesMovies[index], index);
                },
              );
            },
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget _buildMovieItem(
      BuildContext context, FavoritesScreenModel element, int index) {
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
              child: Image.network(element.poster!),
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
