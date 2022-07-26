import 'dart:convert';
import 'dart:io';

import 'package:movies_app/models/popular_movie_response.dart';

class ApiClientMovie {
  final client = HttpClient();
  static const _apiKey = '86196ef717eb46e0fc1534791f3b8fb7';

  Future<List<PopularMovieResponse>>getPopularMovies(int page)async{
    final json = await get('https://developers.themoviedb.org/3/movie/popular/new?api_key=$_apiKey')
    as List<dynamic>;

    final PopularMovies = json
        .map((dynamic e) => PopularMovieResponse.fromJson(e as Map<String, dynamic>))
        .toList();
    return PopularMovies;
  }

  Future<dynamic> get(String ulr) async{
    final url = Uri.parse(ulr);
    final request = await client.getUrl(url);
    final response = await request.close();

    final jsonStrings = await response.transform(utf8.decoder).toList();
    final jsonString = jsonStrings.join();
    final dynamic json = jsonDecode(jsonString);
    return json;
  }
}