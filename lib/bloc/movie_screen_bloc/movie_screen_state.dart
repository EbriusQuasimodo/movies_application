part of 'movie_screen_bloc.dart';

enum MovieStatus { initial, loading, success, error}

@immutable
class MovieScreenState {
  const MovieScreenState._({
    this.status = MovieStatus.initial,
    this.currentPage = 1,
    this.loadMovies = const <MovieModel>[],
  });

  final MovieStatus status;
  final int currentPage;
  final List<MovieModel> loadMovies;

  const MovieScreenState.initial() : this._();

  const MovieScreenState.loading() : this._(status: MovieStatus.loading);

  const MovieScreenState.success({required List<MovieModel> loadMovies})
      : this._(status: MovieStatus.success,  loadMovies: loadMovies);

  const MovieScreenState.error() : this._(status: MovieStatus.error);
}
