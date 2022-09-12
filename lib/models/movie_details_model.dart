class MovieDetailsModel {
  final int id;
  final String type;
  final String? name;
  final String? description;
  final String? slogan;
  final int year;
  final PosterDetailsModel? poster;
  final RatingDetailsModel? rating;
  final List<PersonsDetailsModel> persons;
  final VideosDetailsModel? videos;
  final List<GenresDetailsModel> genres;

  MovieDetailsModel({
    required this.id,
    required this.type,
    required this.name,
    required this.description,
    required this.slogan,
    required this.year,
    required this.poster,
    required this.rating,
    required this.persons,
    this.videos,
    required this.genres,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailsModel(
      id: json['id'],
      type: json['type'],
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      slogan: json['slogan'],
      year: json['year'],
      poster: json['poster'] == null
          ? null
          : PosterDetailsModel.fromJson(json['poster']),
      rating: json['rating'] == null
          ? null
          : RatingDetailsModel.fromJson(json['rating']),
      persons: (json['persons'] as List<dynamic>)
          .map((dynamic e) =>
              PersonsDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      videos: json['videos'] == null
          ? null
          : VideosDetailsModel.fromJson(json['videos']),
      genres: (json['genres'] as List<dynamic>)
          .map((dynamic e) =>
              GenresDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class PosterDetailsModel {
  PosterDetailsModel({
    required this.id,
    required this.url,
    required this.previewUrl,
  });

  String? id;
  String? url;
  String? previewUrl;

  factory PosterDetailsModel.fromJson(Map<String, dynamic> json) {
    return PosterDetailsModel(
      id: json['_id'] ?? '',
      url: json['url'] ?? '',
      previewUrl: json['previewUrl'] ?? '',
    );
  }
}

class RatingDetailsModel {
  RatingDetailsModel({
    required this.kp,
  });

  int kp;

  factory RatingDetailsModel.fromJson(Map<String, dynamic> json) {
    return RatingDetailsModel(
      kp: json['kp'],
    );
  }
}

class PersonsDetailsModel {
  PersonsDetailsModel({
    required this.id,
    required this.name,
    this.description,
    required this.photo,
  });

  int id;
  String name;
  String photo;
  String? description;

  factory PersonsDetailsModel.fromJson(Map<String, dynamic> json) {
    return PersonsDetailsModel(
      id: json['id'],
      name: json['name'],
      photo: json['photo'],
      description: json['description'] ?? '',
    );
  }
}

class VideosDetailsModel {
  VideosDetailsModel({required this.id, required this.trailers});

  String? id;
  List<TrailersDetailsModel> trailers;

  factory VideosDetailsModel.fromJson(Map<String, dynamic> json) {
    return VideosDetailsModel(
      id: json['id'] ?? '',
      trailers: (json['trailers'] as List<dynamic>)
          .map((dynamic e) =>
              TrailersDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class TrailersDetailsModel {
  TrailersDetailsModel({
    required this.url,
    required this.name,
  });

  String url;
  String name;

  factory TrailersDetailsModel.fromJson(Map<String, dynamic> json) {
    return TrailersDetailsModel(
      url: json['url'],
      name: json['name'],
    );
  }
}

class GenresDetailsModel {
  GenresDetailsModel({
    required this.name,
  });

  String name;

  factory GenresDetailsModel.fromJson(Map<String, dynamic> json) {
    return GenresDetailsModel(
      name: json['name'],
    );
  }
}
