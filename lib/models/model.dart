import 'dart:convert';

Model movieModelFromJson(String str) => Model.fromJson(json.decode(str));

String movieModelToJson(Model data) => json.encode(data.toJson());

class Model {
  Model({
    required this.docs,
    required this.total,
    required this.limit,
    required this.page,
    required this.pages,
  });

  List<Doc> docs;
  num total;
  num limit;
  num page;
  num pages;

  factory Model.fromJson(Map<String, dynamic> json) => Model(
        docs: List<Doc>.from(json["docs"].map((x) => Doc.fromJson(x))),
        total: json["total"],
        limit: json["limit"],
        page: json["page"],
        pages: json["pages"],
      );

  Map<String, dynamic> toJson() => {
        "docs": List<dynamic>.from(docs.map((x) => x.toJson())),
        "total": total,
        "limit": limit,
        "page": page,
        "pages": pages,
      };
}

class Doc {
  Doc({
    required this.externalId,
    required this.logo,
    required this.poster,
    required this.rating,
    required this.votes,
    required this.id,
    required this.type,
    required this.name,
    required this.description,
    required this.year,
    required this.alternativeName,
    required this.enName,
    required this.movieLength,
    required this.names,
    required this.shortDescription,
  });

  ExternalId externalId;
  Logo logo;
  Poster poster;
  Rating rating;
  Rating votes;
  num id;
  String? type;
  dynamic name;
  dynamic description;
  num year;
  String? alternativeName;
  dynamic enName;
  dynamic movieLength;
  List<Name> names;
  dynamic shortDescription;

  factory Doc.fromJson(Map<String, dynamic> json) => Doc(
        externalId: ExternalId.fromJson(json["externalId"]),
        logo: Logo.fromJson(json["logo"]),
        poster: Poster.fromJson(json["poster"]),
        rating: Rating.fromJson(json["rating"]),
        votes: Rating.fromJson(json["votes"]),
        id: json["id"],
        type: json["type"],
        name: json["name"],
        description: json["description"],
        year: json["year"],
        alternativeName: json["alternativeName"],
        enName: json["enName"],
        movieLength: json["movieLength"],
        names: List<Name>.from(json["names"].map((x) => Name.fromJson(x))),
        shortDescription: json["shortDescription"],
      );

  Map<String, dynamic> toJson() => {
        "externalId": externalId.toJson(),
        "logo": logo.toJson(),
        "poster": poster.toJson(),
        "rating": rating.toJson(),
        "votes": votes.toJson(),
        "id": id,
        "type": type,
        "name": name,
        "description": description,
        "year": year,
        "alternativeName": alternativeName,
        "enName": enName,
        "movieLength": movieLength,
        "names": List<dynamic>.from(names.map((x) => x.toJson())),
        "shortDescription": shortDescription,
      };
}

class ExternalId {
  ExternalId({
    required this.id,
    required this.imdb,
  });

  String? id;
  String? imdb;

  factory ExternalId.fromJson(Map<String, dynamic> json) => ExternalId(
        id: json["_id"],
        imdb: json["imdb"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "imdb": imdb,
      };
}

class Logo {
  Logo({
    required this.id,
    required this.url,
  });

  String? id;
  dynamic url;

  factory Logo.fromJson(Map<String, dynamic> json) => Logo(
        id: json["_id"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "url": url,
      };
}

class Name {
  Name({
    required this.id,
    required this.name,
  });

  String? id;
  String? name;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        id: json["_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
      };
}

class Poster {
  Poster({
    required this.id,
    required this.url,
    required this.previewUrl,
  });

  String? id;
  String? url;
  String? previewUrl;

  factory Poster.fromJson(Map<String, dynamic> json) => Poster(
        id: json["_id"],
        url: json["url"],
        previewUrl: json["previewUrl"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "url": url,
        "previewUrl": previewUrl,
      };
}

class Rating {
  Rating({
    required this.id,
    required this.kp,
    required this.imdb,
    required this.filmCritics,
    required this.russianFilmCritics,
    required this.ratingAwait,
  });

  String? id;
  num kp;
  num imdb;
  num filmCritics;
  num russianFilmCritics;
  num ratingAwait;

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        id: json["_id"],
        kp: json["kp"],
        imdb: json["imdb"],
        filmCritics: json["filmCritics"],
        russianFilmCritics: json["russianFilmCritics"],
        ratingAwait: json["await"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "kp": kp,
        "imdb": imdb,
        "filmCritics": filmCritics,
        "russianFilmCritics": russianFilmCritics,
        "await": ratingAwait,
      };
}
