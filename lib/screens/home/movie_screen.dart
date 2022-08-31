import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/bloc/movie_screen_bloc/movie_screen_bloc.dart';
import 'package:movies_app/models/movie_model.dart';
import 'package:movies_app/resources/movie_repository/movie_repository.dart';

class MovieScreen extends StatelessWidget {
  MovieScreen({Key? key}) : super(key: key);

  final MovieRepository movieRepository = MovieRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => MovieScreenBloc(movieRepository: movieRepository)
          ..add(
            GetMoviesEvent(),
          ),
        child: _movieBloc(context),
      ),
    );
  }

  Widget _movieBloc(BuildContext context) {
    return BlocBuilder<MovieScreenBloc, MovieScreenState>(
      builder: (context, state) {
        if (state == const MovieScreenState.error()) {
          return const Text('error');
        }
        if (state == const MovieScreenState.loading()) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state == MovieScreenState.success(loadMovies: state.loadMovies)) {
          return GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 290,
            ),
            itemCount: state.loadMovies.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildMovieItemTest(context, state.loadMovies[index]);
            },
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget _buildMovieItemTest(BuildContext context, MovieModel element) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          child: SizedBox(
            height: 230,
            child: Image.network(element.poster!.previewUrl),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Column(
            children: [
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
                element.year.toString() ?? '',
                style: const TextStyle(
                  color: Colors.black26,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
