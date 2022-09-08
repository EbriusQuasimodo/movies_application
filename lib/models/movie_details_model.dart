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

  MovieDetailsModel({
    required this.id,
    required this.type,
    required this.name,
    this.description,
    required this.slogan,
    required this.year,
    this.poster,
    this.rating,
    required this.persons,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailsModel(
      id: json['id'],
      type: json['type'],
      name: json['name'] ??'',
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
    required this.imdb,
  });

  int kp;
  int? imdb;

  factory RatingDetailsModel.fromJson(Map<String, dynamic> json) {
    return RatingDetailsModel(
      kp: json['kp'],
      imdb: json['imdb'] ?? '',
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
