part of 'favorites_screen_bloc.dart';

enum MovieStatus { initial, loading, success, error }

@immutable
class FavoritesScreenState {
  const FavoritesScreenState._({
    this.status = MovieStatus.initial,
    this.favoritesMovies = const <FavoritesScreenModel>[],
  });

  final MovieStatus status;
  final List<FavoritesScreenModel> favoritesMovies;

  const FavoritesScreenState.initial() : this._();

  const FavoritesScreenState.loading()
      : this._(
          status: MovieStatus.loading,
        );

  const FavoritesScreenState.success(
      {required List<FavoritesScreenModel> favoritesMovies})
      : this._(status: MovieStatus.success, favoritesMovies: favoritesMovies);

  const FavoritesScreenState.error()
      : this._(
          status: MovieStatus.error,
        );
}
