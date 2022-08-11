import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movies_app/models/movie_list_model.dart';
import 'package:movies_app/models/movie_model.dart';
import 'package:dio/dio.dart';



class ApiClient{
  Future<MovieModel> getMovie() async {
    final url = Uri.parse('https://api.kinopoisk.dev/movie?token=8JZSE96-N8DMRB6-MT37PAB-AJNPJFA');

    final response = await http.get(url);

    if (response.statusCode == 200) {

      return MovieModel.fromJson(json.decode(response.body));


    } else {

      throw Exception("failed");
    }
  }
}
