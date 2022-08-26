import 'package:movies_app/models/movie_model.dart';
import 'package:movies_app/resources/api_client/api_client.dart';

class MovieRepository {
  ApiClient _apiClient = ApiClient();

  Future<List<Docs>> fetchAllMovies() => _apiClient.fetchMovies();
}
