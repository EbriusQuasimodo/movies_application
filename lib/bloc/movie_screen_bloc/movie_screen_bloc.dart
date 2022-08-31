import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/models/movie_model.dart';
import 'package:movies_app/resources/api_client/api_client_dio.dart';
import 'package:movies_app/resources/movie_repository/movie_repository.dart';

part 'movie_screen_event.dart';

part 'movie_screen_state.dart';

class MovieScreenBloc extends Bloc<MovieScreenEvent, MovieScreenState> {
  final MovieRepository movieRepository;

  MovieScreenBloc({required this.movieRepository})
      : super(
          const MovieScreenState.initial(),
        ) {
    on<GetMoviesEvent>(
      (event, emit) async {
        emit(
          const MovieScreenState.loading(),
        );
        try {
          final List<MovieModel> loadedMovieList =
              await movieRepository.fetchAllMovies();
          emit(
            MovieScreenState.success(loadMovies: loadedMovieList),
          );
        } catch (_) {
          emit(
            const MovieScreenState.error(),
          );
        }
      },
    );
  }
}
