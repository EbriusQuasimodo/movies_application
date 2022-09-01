class MovieModel {
  final int id;
  final PosterModel? poster;
  final String? name;
  final String? description;
  final int? year;

  MovieModel({
    required this.id,
    required this.poster,
    this.name,
    this.description,
    required this.year,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      poster: PosterModel.fromJson(json['poster']),
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      year: json['year'] ?? '',
    );
  }
}

class PosterModel {
  PosterModel({
    required this.id,
    required this.url,
    required this.previewUrl,
  });

  String id;
  String url;
  String previewUrl;

  factory PosterModel.fromJson(Map<String, dynamic> json) {
    return PosterModel(
      id: json['id']??'',
      url: json['url']??'',
      previewUrl: json['previewUrl']??'',
    );
  }
}
