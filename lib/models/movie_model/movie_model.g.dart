// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      docs: (json['docs'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'docs': instance.docs,
    };

_$_Results _$$_ResultsFromJson(Map<String, dynamic> json) => _$_Results(
      id: (json['id'] as num).toDouble(),
      name: json['name'] as String,
      description: json['description'] as String,
      year: (json['year'] as num).toDouble(),
      poster: (json['poster'] as List<dynamic>)
          .map((e) => Poster.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultsToJson(_$_Results instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'year': instance.year,
      'poster': instance.poster,
    };

_$_Poster _$$_PosterFromJson(Map<String, dynamic> json) => _$_Poster(
      previewUrl: json['previewUrl'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_PosterToJson(_$_Poster instance) => <String, dynamic>{
      'previewUrl': instance.previewUrl,
      'url': instance.url,
    };
