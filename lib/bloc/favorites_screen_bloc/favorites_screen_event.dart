part of 'favorites_screen_bloc.dart';

@immutable
abstract class FavoritesScreenEvent {}

class GetFavoritesMoviesEvent extends FavoritesScreenEvent {
  final bool shouldShowProgress;
  final int movieId;
  final String? poster;
  final String? name;
  final int? year;

  GetFavoritesMoviesEvent({
    required this.movieId,
    required this.poster,
    required this.name,
    required this.year,
    required this.shouldShowProgress,
  });
}
