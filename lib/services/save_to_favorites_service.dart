import 'package:hive/hive.dart';
import 'package:movies_app/models/favorites_screen_model.dart';

class SaveToFavoritesService {

  Future<Box> favoritesBox() async {
    var favorites = await Hive.openBox<FavoritesScreenModel>('favorites_movie');
    return favorites;
  }

  Future<List<FavoritesScreenModel>> favoritesMovies() async {

    final box = await favoritesBox();
    List<FavoritesScreenModel> movies = box.values.cast<FavoritesScreenModel>().toList();
    return movies;
    /*
    final favoritesMovie = favorites?.values.where((element) =>
        element.movieId == movieId &&
        element.poster == poster &&
        element.name == name &&
        element.year == year);
    return favoritesMovie?.toList();

     */
  }

  Future<void> addFavorites(FavoritesScreenModel movies)async {

    final box = await favoritesBox();
    await box.add(movies);
  }

  void removeFavorites(final int movieId) async {
    final box = await favoritesBox();
    await box.delete(movieId);
  }
}
