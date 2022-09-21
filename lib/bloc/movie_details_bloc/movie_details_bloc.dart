import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/models/favorites_screen_model.dart';
import 'package:movies_app/models/movie_details_model.dart';
import 'package:movies_app/resources/movie_repository/movie_repository.dart';
import 'package:movies_app/services/save_to_favorites_service.dart';

part 'movie_details_event.dart';

part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final MovieRepository movieRepository;
  final int movieId;
  final SaveToFavoritesService service;

  MovieDetailsBloc(
      {required this.movieRepository,
      required this.movieId,
      required this.service})
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
          loadMovies: loadedMovie,
          //List.of(state.loadMovies)..addAll(loadedMovieList),
          id: movieId,
        ),
      );
    });
    on<SaveToFavoritesScreenEvent>((event, emit) async {
      final favoritesMovie = await service.favoritesMovies(
          event.movieId, event.poster, event.name, event.year);
      emit(MovieDetailsState.save(
          favoritesMovie: favoritesMovie, id: event.movieId));
    });
  }
}
