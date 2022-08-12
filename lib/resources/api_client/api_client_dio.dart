import 'package:dio/dio.dart';

import 'package:movies_app/models/model.dart';


class ApiClientDio{



  Future<List<Doc>> getMovieDio()async{
    Dio dio= new Dio();
    try{
    Response response = await dio.get('https://api.kinopoisk.dev/movie?token=8JZSE96-N8DMRB6-MT37PAB-AJNPJFA');
    Model moviesModel = Model.fromJson(response.data);
    return moviesModel.docs;
    //print(response.data);
    }catch(error){
      print(error);
      rethrow;
    }

}

}