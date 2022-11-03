import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/models/favorites_screen_model.dart';
import 'package:movies_app/models/movie_details_model.dart';
import 'package:movies_app/resources/movie_repository/movie_repository.dart';

part 'favorites_screen_event.dart';

part 'favorites_screen_state.dart';

class FavoritesScreenBloc
    extends Bloc<FavoritesScreenEvent, FavoritesScreenState> {
  final MovieRepository movieRepository;

  FavoritesScreenBloc({required this.movieRepository})
      : super(const FavoritesScreenState.initial()) {
    on<GetFavoritesMoviesEvent>((event, Emitter<FavoritesScreenState> emit) {
      if (event.shouldShowProgress) {
        emit(
          const FavoritesScreenState.loading(),
        );
      }
      emit.onEach<List<FavoritesScreenModel>>(
        movieRepository.favoritesMovies(),
        onData: (loadedMovies) =>
            add(LoadFavoritesEvent(loadedMovies: loadedMovies)),
      );
      movieRepository.loadFavorites();
    });
    on<LoadFavoritesEvent>(
      (event, emit) async {
        emit(
          FavoritesScreenState.success(favoritesMovies: event.loadedMovies),
        );
      },
    );

    on<DeleteFavoritesMovieEvent>((event, emit) {
      emit.forEach(
        movieRepository.favoritesMovies(),
        onData: (List<FavoritesScreenModel> loadedMovies) {
          return FavoritesScreenState.success(favoritesMovies: loadedMovies);
        },
      );
      movieRepository.deleteFavorites(index: event.index);
    });
  }
}
