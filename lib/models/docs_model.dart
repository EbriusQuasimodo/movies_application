import 'package:movies_app/models/poster_model.dart';

class DocsModel{
  final int id;
  final String name;
  final String description;
  final int year;
  final List<PosterModel> poster;

  DocsModel({
    required this.id,
    required this.name,
    required this.description,
    required this.year,
    required this.poster,
  });

  factory DocsModel.fromJson(Map<String, dynamic> json){
    return DocsModel(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      year: json['year'] as int,
      poster: (json['poster'] as List<dynamic>)
          .map((dynamic e) => PosterModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson(){
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'year': year,
      'poster': poster.map((e) => e.toJson()),
    };
  }

}