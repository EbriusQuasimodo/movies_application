import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/models/favorites_screen_model.dart';
import 'package:movies_app/services/save_to_favorites_service.dart';

part 'favorites_screen_event.dart';

part 'favorites_screen_state.dart';

class FavoritesScreenBloc
    extends Bloc<FavoritesScreenEvent, FavoritesScreenState> {
  final SaveToFavoritesService service;

  FavoritesScreenBloc({required this.service})
      : super(const FavoritesScreenState.initial()) {
    on<GetFavoritesMoviesEvent>((event, emit) {
      if (event.shouldShowProgress) {
        emit(
          const FavoritesScreenState.loading(),
        );
      }
      final movies = service.favoritesMovies(
          event.movieId, event.poster, event.name, event.year);
      emit(
        FavoritesScreenState.success(
          favoritesMovies: List.of(state.favoritesMovies!)..addAll(movies!),
        ),
      );
    });
  }
}
