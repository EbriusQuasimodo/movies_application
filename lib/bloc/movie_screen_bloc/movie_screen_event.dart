part of 'movie_screen_bloc.dart';

@immutable
abstract class MovieScreenEvent {}

class GetMoviesEvent extends MovieScreenEvent {
  final bool shouldShowProgress;

  GetMoviesEvent({required this.shouldShowProgress});
}
