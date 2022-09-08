import 'package:dio/dio.dart';
import 'package:movies_app/models/movie_details_model.dart';
import 'package:movies_app/models/movie_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClientDio {
  String token = '8JZSE96-N8DMRB6-MT37PAB-AJNPJFA';
  Dio dio = Dio(BaseOptions(baseUrl: 'https://api.kinopoisk.dev'))
    ..interceptors.add(PrettyDioLogger());

  Future<List<MovieModel>> getMovieDio(int page) async {
    try {
      Response response = await dio.get(
          '/movie?token=$token&field=rating.kp&search=7-10&field=year&search=2017-2022',
          queryParameters: {
            'page': page.toString(),
          });
      return List<MovieModel>.from(
        response.data['docs'].map(
          (e) => MovieModel.fromJson(e),
        ),
      );
    } on DioError catch (error) {
      print(error);
      rethrow;
    }
  }

  Future<List<MovieDetailsModel>> getMovieDetailsDio(int id) async {
    try {
      Response response = await dio.get(
        '/movie?token=$token&field=id&search=$id',
      );
      return List<MovieDetailsModel>.from(
        response.data['docs'].map(
          (e) => MovieDetailsModel.fromJson(e),
        ),
      );
    } on DioError catch (error) {
      print(error);
      rethrow;
    }
  }
}
