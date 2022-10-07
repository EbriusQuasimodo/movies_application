import 'dart:async';

import 'package:hive/hive.dart';
import 'package:movies_app/models/favorites_screen_model.dart';
import 'package:movies_app/models/movie_details_model.dart';

class SaveToFavoritesService {
  final StreamController<List<FavoritesScreenModel>> _streamController =
      StreamController();

  late final Stream<List<FavoritesScreenModel>> favoritesMovies =
      _streamController.stream;

  Future<Box> favoritesBox() async {
    var favorites = await Hive.openBox<FavoritesScreenModel>('favorites_movie');
    return favorites;
  }

  void loadFavoritesMovies() async {
    final box = await favoritesBox();
    List<FavoritesScreenModel> movies =
        box.values.cast<FavoritesScreenModel>().toList();
    _streamController.add(movies);
  }

  Future<dynamic> addFavorites(MovieDetailsModel? movie) async {
    final box = await favoritesBox();
    await box.add(FavoritesScreenModel(
        movieId: movie!.id,
        poster: movie.poster?.previewUrl,
        name: movie.name,
        year: movie.year));

    loadFavoritesMovies();
  }

  Future<dynamic> removeFavorites(final int index) async {
    final box = await favoritesBox();
    await box.deleteAt(index);
  }
}
