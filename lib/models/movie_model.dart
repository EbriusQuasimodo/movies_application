class MovieModel {
  final int id;
  final Poster? poster;
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
      poster: Poster.fromJson(json['poster']),
      name: json['name'] ?? 'без названия',
      description: json['description'] ?? 'без описания',
      year: json['year'],
    );
  }
}

class Poster {
  Poster({
    required this.id,
    required this.url,
    required this.previewUrl,
  });

  String id;
  String url;
  String previewUrl;

  factory Poster.fromJson(Map<String, dynamic> json) {
    return Poster(
      id: json['id'] ?? '',
      url: json['url'] ?? '',
      previewUrl: json['previewUrl'] ?? '',
    );
  }
}
