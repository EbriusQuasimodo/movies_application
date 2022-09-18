import 'package:movies_app/models/favorites_movie_model.dart';
import 'package:movies_app/models/movie_details_model.dart';
import 'package:movies_app/models/movie_model.dart';
import 'package:movies_app/resources/api_client/api_client_dio.dart';

class MovieRepository {
  final ApiClientDio apiClient = ApiClientDio();

  Future<List<MovieModel>> fetchAllMovies({required int page}) =>
      apiClient.getMovieDio(page);

  Future<MovieDetailsModel> fetchAllDetails({required int id}) =>
      apiClient.getMovieDetailsDio(id);

  Future<FavoritesMovieModel> fetchFavoritesMovie({required int id}) =>
      apiClient.getFavoritesMovieDio(id.toInt());
}
