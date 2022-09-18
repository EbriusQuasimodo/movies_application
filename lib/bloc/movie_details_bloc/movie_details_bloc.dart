import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/models/movie_details_model.dart';
import 'package:movies_app/resources/movie_repository/movie_repository.dart';

part 'movie_details_event.dart';

part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final MovieRepository movieRepository;
  final int movieId;

  MovieDetailsBloc({required this.movieRepository, required this.movieId})
      : super(
          MovieDetailsState.initial(id: movieId),
        ) {
    on<MovieDetailsEvent>((event, emit) async {
      emit(
        MovieDetailsState.loading(id: movieId),
      );
      final MovieDetailsModel loadedMovie =
          await movieRepository.fetchAllDetails(id: state.id);
      emit(
        MovieDetailsState.success(
          loadedMovie: loadedMovie,
          //List.of(state.loadMovies)..addAll(loadedMovieList),
          id: movieId,
        ),
      );
    });
  }
}
