part of 'movie_details_bloc.dart';

enum MovieDetailsStatus { initial, loading, success, error, save }

@immutable
class MovieDetailsState {
  const MovieDetailsState._({
    this.status = MovieDetailsStatus.initial,
    required this.id,
    this.loadedMovie,
    this.favoritesMovie = const <FavoritesScreenModel>[],
  });

  final List<FavoritesScreenModel>? favoritesMovie;
  final int id;
  final MovieDetailsStatus status;
  final MovieDetailsModel? loadedMovie;

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

  const MovieDetailsState.save(
      {required List<FavoritesScreenModel>? favoritesMovie, required int id})
      : this._(
            status: MovieDetailsStatus.save,
            id: id,
            favoritesMovie: favoritesMovie);
}
