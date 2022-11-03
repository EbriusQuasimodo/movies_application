part of 'movie_details_bloc.dart';

enum MovieDetailsStatus { initial, loading, success, error }

@immutable
class MovieDetailsState {
  const MovieDetailsState._({
    this.status = MovieDetailsStatus.initial,
    required this.id,
    this.loadedMovie,

    this.favoritesMovies = const <FavoritesScreenModel>[],
  });

  final int id;
  final MovieDetailsStatus status;
  final MovieDetailsModel? loadedMovie;

  final List<FavoritesScreenModel> favoritesMovies;

  const MovieDetailsState.initial({required int id}) : this._(id: id);

  const MovieDetailsState.loading({required int id})
      : this._(status: MovieDetailsStatus.loading, id: id);

  const MovieDetailsState.success(
      {required MovieDetailsModel loadMovies, required int id})
      : this._(
          status: MovieDetailsStatus.success,
          loadedMovie: loadMovies,
          id: id,
        );

  const MovieDetailsState.error({required int id})
      : this._(status: MovieDetailsStatus.error, id: id);
}
