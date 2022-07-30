import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movies_app/models/movie_model/movie_model.dart';

class ApiClient{
  final _token = '8JZSE96-N8DMRB6-MT37PAB-AJNPJFA';

  Future <Movie> getMovie(String page) async{
    try{
      var response = await http
          .get(Uri.parse('https://api.kinopoisk.dev/movie?limit=25&token=8JZSE96-N8DMRB6-MT37PAB-AJNPJFA'));

      var jsonResult = json.decode(response.body);
      return Movie.fromJson(jsonResult);
    }catch(e){
      throw Exception(e.toString());
    }


}
}