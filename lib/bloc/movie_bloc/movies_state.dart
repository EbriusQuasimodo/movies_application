part of 'movies_bloc.dart';

@freezed
class MovieState with _$MovieState{
  const factory MovieState.loading() = MovieStateLoading;
  const factory MovieState.loaded({required Movie movieLoaded}) = MovieStateLoaded;
  const factory MovieState.error() = MovieStateError;
}