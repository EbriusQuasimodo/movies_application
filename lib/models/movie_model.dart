import 'package:movies_app/models/docs_model.dart';
import 'package:movies_app/models/poster_model.dart';

class MovieModel{
  int limit;
  int page;
  List<DocsModel> docs;


  MovieModel({
    required this.limit,
    required this.page,
    required this.docs,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json){
    return MovieModel(
      limit: json['limit'] as int,
      page: json['page'] as int,
      docs: (json['docs'] as List<dynamic>)
          .map((dynamic e) => DocsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson(){
    return <String, dynamic>{
      'limit': limit,
      'page': page,
      'docs': docs.map((e) => e.toJson()),
    };
  }

}

abstract class MovieResult{}

class MovieResultSuccess extends MovieResult{
  final MovieModel movieList;
  MovieResultSuccess(this.movieList);
}

class MovieResultError extends MovieResult{
  final String error;
  MovieResultError(this.error);
}


class MovieResultLoading extends MovieResult{
  MovieResultLoading();
}