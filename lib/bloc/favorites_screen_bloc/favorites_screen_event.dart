part of 'favorites_screen_bloc.dart';

@immutable
abstract class FavoritesScreenEvent {}

class GetFavoritesMoviesEvent extends FavoritesScreenEvent {
  final bool shouldShowProgress;

  GetFavoritesMoviesEvent({
    required this.shouldShowProgress,
  });
}
