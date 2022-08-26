import 'dart:async';
import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/models/movie_model.dart';
import 'package:movies_app/resources/movie_repository/movie_repository.dart';

part 'movie_screen_event.dart';

part 'movie_screen_state.dart';

class MovieScreenBloc extends Bloc<MovieScreenEvent, MovieScreenState> {
  final MovieRepository movieRepository;

  MovieScreenBloc({required this.movieRepository})
      : super(InitialMovieScreenState()) {
    on<InitialMovieScreenEvent>((event, emit) async {
      emit(InitialMovieScreenState());
      try {
        final List<Docs> _loadedMovieList =
        await movieRepository.fetchAllMovies();
        emit(LoadedMovieScreenState(loadedMovies: _loadedMovieList));
      } catch (_) {
        emit(ErrorMovieScreenState());
      }
    });
  }
}
