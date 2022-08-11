import 'package:movies_app/models/movie_model.dart';

class MovieListModel{
  List<MovieModel> movie;


  MovieListModel({
    required this.movie,

  });

  factory MovieListModel.fromJson(Map<String, dynamic> json){
    return MovieListModel(
      movie: (json['movie'] as List<dynamic>)
          .map((dynamic e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson(){
    return <String, dynamic>{
      'movie': movie.map((e) => e.toJson()),
    };
  }
}

