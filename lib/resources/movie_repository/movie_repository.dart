import 'package:movies_app/models/favorites_screen_model.dart';
import 'package:movies_app/models/movie_details_model.dart';
import 'package:movies_app/models/movie_model.dart';
import 'package:movies_app/resources/api_client/api_client_dio.dart';
import 'package:movies_app/services/save_to_favorites_service.dart';

class MovieRepository {
  final ApiClientDio apiClient = ApiClientDio();
  final SaveToFavoritesService service = SaveToFavoritesService();

  Future<List<MovieModel>> fetchAllMovies({required int page}) =>
      apiClient.getMovieDio(page);

  Future<MovieDetailsModel> fetchAllDetails({required int id}) =>
      apiClient.getMovieDetailsDio(id);

  Future<dynamic> addMovie({required MovieDetailsModel movie}) =>
      service.addFavorites(movie);

  Stream<List<FavoritesScreenModel>> favoritesMovies() =>
      service.favoritesMovies;

  void loadFavorites() => service.loadFavoritesMovies();

  void deleteFavorites({required int index}) => service.removeFavorites(index);
}
