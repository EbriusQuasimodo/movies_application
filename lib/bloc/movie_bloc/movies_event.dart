part of 'movies_bloc.dart';

@freezed
class MoviesEvent with _$MoviesEvent{
const factory MoviesEvent.fetch({
  required String page,
}) = MoviesEventFetch;
}