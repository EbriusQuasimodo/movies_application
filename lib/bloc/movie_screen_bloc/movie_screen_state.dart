part of 'movie_screen_bloc.dart';

@immutable
class MovieScreenState {
  const MovieScreenState._({
    this.currentPage = 1,
    this.loadMovies = const <MovieModel>[],
  });

  final int currentPage;
  final List<MovieModel> loadMovies;

  const MovieScreenState.initial() : this._();

  const MovieScreenState.loading() : this._();

  const MovieScreenState.success({required List<MovieModel> loadMovies})
      : this._(loadMovies: loadMovies);

  const MovieScreenState.error() : this._();
}
