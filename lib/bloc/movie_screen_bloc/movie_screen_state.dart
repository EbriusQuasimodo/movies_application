part of 'movie_screen_bloc.dart';

enum MovieStatus { initial, loading, success, error }

@immutable
class MovieScreenState {
  const MovieScreenState._({
    this.status = MovieStatus.initial,
    required this.currentPage,
    this.loadMovies = const <MovieModel>[],
  });

  final MovieStatus status;
  final int currentPage;
  final List<MovieModel> loadMovies;

  const MovieScreenState.initial() : this._(currentPage: 1);

  const MovieScreenState.loading({required int currentPage})
      : this._(currentPage: 1, status: MovieStatus.loading);

  const MovieScreenState.success(
      {required List<MovieModel> loadMovies, required int currentPage})
      : this._(
            status: MovieStatus.success,
            loadMovies: loadMovies,
            currentPage: currentPage);

  const MovieScreenState.error({required int currentPage})
      : this._(status: MovieStatus.error, currentPage: 1);
}
