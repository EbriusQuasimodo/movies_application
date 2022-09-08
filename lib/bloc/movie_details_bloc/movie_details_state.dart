part of 'movie_details_bloc.dart';

enum MovieDetailsStatus { initial, loading, success, error }

@immutable
class MovieDetailsState {
  const MovieDetailsState._({
    this.status = MovieDetailsStatus.initial,
    required this.id,
    this.loadMovies = const <MovieDetailsModel>[],
  });

  final int id;
  final MovieDetailsStatus status;
  final List<MovieDetailsModel> loadMovies;

  const MovieDetailsState.initial({required int id}) : this._(id: id);

  const MovieDetailsState.loading({required int id})
      : this._(status: MovieDetailsStatus.loading, id: id);

  const MovieDetailsState.success(
      {required List<MovieDetailsModel> loadMovies, required int id})
      : this._(
          status: MovieDetailsStatus.success,
          loadMovies: loadMovies,
          id: id,
        );

  const MovieDetailsState.error({required int id}) : this._(status: MovieDetailsStatus.error, id: id);
}
