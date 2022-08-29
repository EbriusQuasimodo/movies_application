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
            InitialMovieScreenEvent(),
          ),
        child: _movieBloc(context),
      ),
    );
  }

  Widget _movieBloc(context) {
    return BlocBuilder<MovieScreenBloc, MovieScreenState>(
      builder: (context, state) {
        print(state.runtimeType);
        if (state is ErrorMovieScreenState) {
          return const Text('error');
        }
        if (state is InitialMovieScreenState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is LoadedMovieScreenState) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 9,
            ),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.5,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: state.loadedMovies.length,
              itemBuilder: (BuildContext context, int index) {
                return _movieItems(context, state.loadedMovies[index]);
              },
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget _movieItems(BuildContext context, MovieModel element) {
    return Container(
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Flexible(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Image.network(
                  element.poster!.previewUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    element.name!,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    element.year!.toString(),
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      color: Colors.black26,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
