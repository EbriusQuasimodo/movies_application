part of 'movie_details_bloc.dart';

@immutable
abstract class MovieDetailsEvent {}

class GetMovieDetailsEvent extends MovieDetailsEvent {}

class SaveToFavoritesScreenEvent extends MovieDetailsEvent {
  final int movieId;
  final String? poster;
  final String? name;
  final int? year;

  SaveToFavoritesScreenEvent({required this.movieId, required this.poster, required this.name, required this.year});
}
