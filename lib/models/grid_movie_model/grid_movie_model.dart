import 'package:flutter/material.dart';
import 'package:movies_app/models/movie_model.dart';
import 'package:intl/intl.dart';
import 'package:movies_app/resources/api_clients/api_clien_test.dart';

class MovieGridModel extends ChangeNotifier {
  final _apiClient = ApiClientTest();
  final _movies = <Movie>[];
  List<Movie> get movies => List.unmodifiable(_movies);
  late DateFormat _dateFormat;
  String _locale = 'ru-RU';

  String stringFromDate(DateTime? date) =>
      date!=null ? _dateFormat.format(date) : '';

  void setupLocale(BuildContext context) {
    final locale = Localizations.localeOf(context).toLanguageTag();
    if (_locale == locale) return;
    _locale = locale;
    _dateFormat = DateFormat.yMMMMd(locale);
    _movies.clear();
    _loadMovies();
  }

  Future<void> _loadMovies() async {
    final moviesResponse = await _apiClient.popularMovie(1, _locale);
    _movies.addAll(moviesResponse.movies);
    notifyListeners();
  }

  void onMovieTap(BuildContext context, int index) {
    final id = _movies[index].id;
    Navigator.of(context).pushNamed(
      "/home_screen/movie_details_screen",
      arguments: id,
    );
  }
}

class GridMovieProvider extends InheritedNotifier {
  final MovieGridModel model;

  const GridMovieProvider({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(
    key: key,
    notifier: model,
    child: child,
  );

  static GridMovieProvider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<GridMovieProvider>();

  }

  static GridMovieProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<GridMovieProvider>()
        ?.widget;
    return widget is GridMovieProvider ? widget : null;
  }

}
