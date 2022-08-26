class MovieModel {
  final List<Docs> docs;

  MovieModel({
    required this.docs,
  });

  //List<Docs> docs;

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      docs: List<Docs>.from(
        json['docs'].map(
          (e) => Docs.fromJson(e),
        ),
      ),
    );
  }
}

class Docs {
  final int id;
  final List<Poster> poster;
  final String? name;
  final String? description;
  final int year;

  Docs({
    required this.id,
    required this.poster,
    this.name,
    this.description,
    required this.year,
  });

  factory Docs.fromJson(Map<String, dynamic> json) {
    return Docs(
      id: json['id'],
      poster: List<Poster>.from(
        json['poster'].map(
          (e) => Poster.fromJson(e),
        ),
      ),
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
      id: json['id'],
      url: json['url'],
      previewUrl: json['previewUrl'],
    );
  }
}
