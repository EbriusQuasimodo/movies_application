import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movies_app/models/movie_model.dart';

class ApiClient {
  final _token = '8JZSE96-N8DMRB6-MT37PAB-AJNPJFA';
  final _limit = '20';

  Future<List<Docs>> fetchMovies() async {
    final response = await http.get(
      Uri.https(
        'api.kinopoisk.dev',
        '/movie',
        <String, String>{'limit': '$_limit'},
      ),
    );
    if (response.statusCode == 200) {
      final List<dynamic> movieJson = json.decode(response.body);
      return movieJson
          .map(
            (json) => Docs.fromJson(json),
          )
          .toList();
    }
    throw Exception('error fetching movies');
  }
}
