import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_app/models/movie_model/movie_model.dart';
import 'package:movies_app/resources/api_client/api_client.dart';
import 'package:bloc/bloc.dart';

part 'movies_bloc.freezed.dart';
//part 'movies_bloc.g.dart';
part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc <MoviesEvent, MovieState>{
  final ApiClient apiClient;
  MoviesBloc({required this.apiClient})
      : super(const MovieState.loading()) {
    on<MoviesEventFetch>((event, emit) async {
      emit(const MovieState.loading());
      try{
        Movie _movieLoaded = await apiClient.getMovie(event.page);
        emit (MovieState.loaded(movieLoaded: _movieLoaded));
      }catch (_) {
        emit (const MovieState.error());

      }
    });
  }
}
