import 'dart:async';

import 'package:hive/hive.dart';
import 'package:movies_app/models/favorites_screen_model.dart';
import 'package:movies_app/models/movie_details_model.dart';
import 'package:rxdart/rxdart.dart';

class SaveToFavoritesService {
  final StreamController<List<FavoritesScreenModel>> _streamController =
      BehaviorSubject();

  late final Stream<List<FavoritesScreenModel>> favoritesMovies =
      _streamController.stream;

  void dispose() {
    _streamController.close();
  }

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

  Future<dynamic> addFavorites(MovieDetailsModel movie) async {
    final box = await favoritesBox();
    if (box.containsKey(movie.id)) {
      box.delete(movie.id);
    }
      await box.add(FavoritesScreenModel(
          movieId: movie.id,
          poster: movie.poster?.previewUrl,
        name: movie.name,
          year: movie.year));

    loadFavoritesMovies();
  }

  void removeFavorites(int index) async {
    final box = await favoritesBox();
      await box.deleteAt(index);
    List<FavoritesScreenModel> deleteMovies =
        box.values.cast<FavoritesScreenModel>().toList();
    _streamController.add(deleteMovies);
  }

  Future<List<FavoritesScreenModel>> removeFavoritesOnDetails(int id) async {
    final box = await favoritesBox();
    await box.delete(id);
    List<FavoritesScreenModel> deleteMovies =
   box.values.cast<FavoritesScreenModel>().toList();
    return deleteMovies;
  }
}
