import 'package:dio/dio.dart';

import 'package:movies_app/models/model.dart';

class ApiClientDio {
  String token = '8JZSE96-N8DMRB6-MT37PAB-AJNPJFA';

  Future<List<Doc>> getMovieDio() async {
    Dio dio = Dio();

    try {
      Response response = await dio.get(
        'https://api.kinopoisk.dev/movie?token=$token',
      );
      Model moviesModel = Model.fromJson(response.data);
      return moviesModel.docs;
      //print(response.data);
    } on DioError catch (error) {
      print(error);
      rethrow;
    }
  }
}
