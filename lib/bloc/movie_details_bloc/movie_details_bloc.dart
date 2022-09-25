import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/models/movie_details_model.dart';
import 'package:movies_app/resources/movie_repository/movie_repository.dart';

part 'movie_details_event.dart';

part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final MovieRepository movieRepository;
  final int movieId;

  //List<FavoritesScreenModel> favoritesMovies = [];

  MovieDetailsBloc({required this.movieRepository, required this.movieId})
      : super(
          MovieDetailsState.initial(id: movieId),
        ) {
    on<GetMovieDetailsEvent>((event, emit) async {
      if (event.shouldShowProgress) {
        emit(
          MovieDetailsState.loading(id: movieId),
        );
      }
      final MovieDetailsModel loadedMovie =
          await movieRepository.fetchAllDetails(id: state.id);
      emit(
        MovieDetailsState.success(
          loadMovies: loadedMovie,
          //List.of(state.loadMovies)..addAll(loadedMovieList),
          id: movieId,
        ),
      );
    });
    on<SaveToFavoritesScreenEvent>((event, emit) async {
      final MovieDetailsModel loadedMovie =
          await movieRepository.fetchAllDetails(id: state.id);
      final allFavoritesMovie =
          await movieRepository.addMovie(movie: loadedMovie);
      //final allFavoritesMovie = await movieRepository.addMovie().then((value) {
      //movieRepository.fetchAllDetails(id: movieId);
      if (event.isOnFavorites) {
        emit(MovieDetailsState.success(
            loadMovies: allFavoritesMovie, id: movieId));
      }
    });
  }
}
