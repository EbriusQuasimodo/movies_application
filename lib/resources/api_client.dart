import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movies_app/models/movie_model.dart';
import 'package:movies_app/models/popular_movie_response.dart';

class ApiClient {

  static const _imageUrl = 'https://image.tmdb.org/t/p/w500';
  static const _apiKey = '86196ef717eb46e0fc1534791f3b8fb7';

  Future<PopularMovieResponse> fetchPopularMovie(int page) async {
    try{
      final response = await http.get(Uri.parse('https://developers.themoviedb.org/3/movie/popular/new?api_key=$_apiKey'));

      var jsonResult = json.decode(response.body);
      return PopularMovieResponse.fromJson(jsonResult);
    }catch (e) {
      throw Exception('failed');
    }
  }
}