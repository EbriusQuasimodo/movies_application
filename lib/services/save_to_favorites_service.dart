import 'package:hive/hive.dart';
import 'package:movies_app/models/favorites_screen_model.dart';

class SaveToFavoritesService {
  Box<FavoritesScreenModel>? favorites;

  Future<void> init() async {
    favorites = await Hive.openBox('favorites_movie');
  }

  List<FavoritesScreenModel>? favoritesMovies(final int movieId,
      final String? poster, final String? name, final int? year) {
    final favoritesId = favorites?.values.where((element) =>
        element.movieId == movieId &&
        element.poster == poster &&
        element.name == name &&
        element.year == year);
    return favoritesId?.toList();
    //print(favorites.values);
  }

  void addFavorites(final int movieId, final String? poster, final String? name,
      final int? year) {
    favorites?.add(FavoritesScreenModel(
        movieId: movieId, poster: poster, name: name, year: year));
  }

  void removeFavorites(final int movieId) async {
    final favoritesMovieToRemove =
        favorites?.values.firstWhere((element) => element.movieId == movieId);
    await favoritesMovieToRemove!.delete();
  }
}
