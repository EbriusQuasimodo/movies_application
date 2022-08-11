import 'package:movies_app/models/movie_list_model.dart';
import 'package:movies_app/models/movie_model.dart';

import 'package:movies_app/resources/api_client/api_client.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class MovieScreenController extends ControllerMVC{
  final ApiClient apiClient = new ApiClient();

  MovieScreenController();

  MovieResult currentState = MovieResultLoading();

  void init ()async{
    try {
      final movieList = await apiClient.getMovie();

     setState(() => currentState=MovieResultSuccess(movieList));
   }catch(error){
      setState(() => currentState = MovieResultError('error'));
    }
  }
}