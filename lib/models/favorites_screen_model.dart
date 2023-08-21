import 'package:hive/hive.dart';

part 'favorites_screen_model.g.dart';

@HiveType(typeId: 1)
class FavoritesScreenModel extends HiveObject {
  @HiveField(0)
  int movieId;
  @HiveField(1)
  String? poster;
  @HiveField(2)
  String? name;
  @HiveField(3)
  int? year;


  FavoritesScreenModel({
    required this.movieId,
    required this.poster,
    required this.name,
    required this.year,
  });
}
