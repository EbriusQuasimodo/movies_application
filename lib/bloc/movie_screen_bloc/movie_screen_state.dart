part of 'movie_screen_bloc.dart';

@immutable
abstract class MovieScreenState {}

class InitialMovieScreenState extends MovieScreenState {}

class LoadedMovieScreenState extends MovieScreenState {
  final List<MovieModel> loadedMovies;

  LoadedMovieScreenState({required this.loadedMovies});
}

class ErrorMovieScreenState extends MovieScreenState {}
