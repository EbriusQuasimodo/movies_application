import 'package:movies_app/models/movie_model.dart';
import 'package:movies_app/resources/api_client/api_client_dio.dart';

class MovieRepository {
  ApiClientDio apiClient = ApiClientDio();

  Future<List<MovieModel>> fetchAllMovies() => apiClient.getMovieDio();
}
