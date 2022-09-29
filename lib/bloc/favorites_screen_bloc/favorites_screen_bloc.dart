import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/models/favorites_screen_model.dart';
import 'package:movies_app/resources/movie_repository/movie_repository.dart';

part 'favorites_screen_event.dart';

part 'favorites_screen_state.dart';

class FavoritesScreenBloc
    extends Bloc<FavoritesScreenEvent, FavoritesScreenState> {
  final MovieRepository movieRepository;

  FavoritesScreenBloc({required this.movieRepository})
      : super(const FavoritesScreenState.initial()) {
    on<GetFavoritesMoviesEvent>((event, emit) async {
      if (event.shouldShowProgress) {
        emit(
          const FavoritesScreenState.loading(),
        );
      }
      final List<FavoritesScreenModel> loadedMovieList =
          await movieRepository.fetchFavoritesMovies();
      emit(FavoritesScreenState.success(favoritesMovies: loadedMovieList));
    });
  }
}
