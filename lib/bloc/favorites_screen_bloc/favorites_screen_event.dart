part of 'favorites_screen_bloc.dart';

@immutable
abstract class FavoritesScreenEvent {}

class GetFavoritesMoviesEvent extends FavoritesScreenEvent {
  final bool shouldShowProgress;

  GetFavoritesMoviesEvent({
    required this.shouldShowProgress,
  });
}

class LoadFavoritesEvent extends FavoritesScreenEvent {
  final List<FavoritesScreenModel> loadedMovies;

  LoadFavoritesEvent({required this.loadedMovies});
}

class DeleteFavoritesMovieEvent extends FavoritesScreenEvent {
  final int index;

  DeleteFavoritesMovieEvent({required this.index});
}
