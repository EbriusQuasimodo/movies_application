import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required List<Results> docs,

}) = _Movie;
  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}

@freezed
class Results with _$Results{
  const factory Results({
    required double id,
    required String name,
    required String description,
    required double year,
    required List<Poster> poster,
}) = _Results;
  factory Results.fromJson(Map<String, dynamic> json) => _$ResultsFromJson(json);
}

@freezed
class Poster with _$Poster{
  const factory Poster({
    required String previewUrl,
    required String url,
}) = _Poster;
  factory Poster.fromJson(Map<String, dynamic> json) => _$PosterFromJson(json);
}

