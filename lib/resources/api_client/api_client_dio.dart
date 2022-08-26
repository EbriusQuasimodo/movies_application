import 'package:dio/dio.dart';
import 'package:movies_app/models/movie_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClientDio {
  String token = '8JZSE96-N8DMRB6-MT37PAB-AJNPJFA';

  Future<List<Docs>> getMovieDio() async {
    Dio dio = Dio(BaseOptions(baseUrl: 'https://api.kinopoisk.dev'));
    dio.interceptors.add(
      PrettyDioLogger(),
    );
    dio.interceptors.add(
      PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90),
    );

    try {
      Response response = await dio.get(
        '/movie?token=$token',
      );
      MovieModel moviesModel = MovieModel.fromJson(response.data);
      return moviesModel.docs;
      //print(response.data);
    } on DioError catch (error) {
      print(error);
      rethrow;
    }
  }
}
