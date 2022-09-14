import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/models/movie_model.dart';
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
        if (event.shouldShowProgress) {
          emit(
            MovieScreenState.loading(currentPage: state.currentPage),
          );
        }
        //try {
        final List<MovieModel> loadedMovieList =
            await movieRepository.fetchAllMovies(page: state.currentPage + 1);
        emit(
          MovieScreenState.success(
              loadMovies: List.of(state.loadMovies)..addAll(loadedMovieList),
              currentPage: state.currentPage + 1),
        );
        // } catch (_) {
        // emit(
        // MovieScreenState.error(currentPage: state.currentPage),
        // );
        //}
      },
    );
  }
}
