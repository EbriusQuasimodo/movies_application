part of 'movie_details_bloc.dart';

@immutable
abstract class MovieDetailsEvent {}

class GetMovieDetailsEvent extends MovieDetailsEvent {
  final bool shouldShowProgress;

  GetMovieDetailsEvent({required this.shouldShowProgress});
}

class SaveToFavoritesScreenEvent extends MovieDetailsEvent {
  final bool shouldShowProgress;
  final bool isOnFavorites;

  SaveToFavoritesScreenEvent(
      {required this.shouldShowProgress, required this.isOnFavorites});
}
