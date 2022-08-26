part of 'movie_screen_bloc.dart';

@immutable
abstract class MovieScreenState {}

class InitialMovieScreenState extends MovieScreenState {}

class LoadedMovieScreenState extends MovieScreenState {
  final List<Docs> loadedMovies;

  LoadedMovieScreenState(
      {required this.loadedMovies}); // : assert(loadedMovies != null);
}

class ErrorMovieScreenState extends MovieScreenState {}
