import 'package:hive/hive.dart';
import 'package:movies_app/models/favorites_screen_model.dart';
import 'package:movies_app/models/movie_details_model.dart';

class SaveToFavoritesService {
  Future<Box> favoritesBox() async {
    var favorites = await Hive.openBox<FavoritesScreenModel>('favorites_movie');
    return favorites;
  }

  Stream<List<FavoritesScreenModel>> favoritesMovies() async* {
    final box = await favoritesBox();
    List<FavoritesScreenModel> movies =
        box.values.cast<FavoritesScreenModel>().toList();
    yield movies;
  }

  Future<dynamic> addFavorites(MovieDetailsModel? movie) async {
    final box = await favoritesBox();
    await box.add(FavoritesScreenModel(
        movieId: movie!.id,
        poster: movie.poster?.previewUrl,
        name: movie.name,
        year: movie.year));
  }

  Future<dynamic> removeFavorites(final int index) async {
    final box = await favoritesBox();
    await box.deleteAt(index);
  }
}
