import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movies_app/models/favorites_screen_model.dart';
import 'package:movies_app/resources/movie_repository/movie_repository.dart';
import 'package:movies_app/screens/details/movie_details.dart';
import 'package:movies_app/screens/favorites/favorites_screen.dart';
import 'package:movies_app/screens/home_screen.dart';
import 'package:movies_app/services/save_to_favorites_service.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter<FavoritesScreenModel>(FavoritesScreenModelAdapter());
  SaveToFavoritesService service = SaveToFavoritesService();
  service.favoritesBox();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // Когда добавляем в избранное, сразу же добавляем новый список избранного в
  // стрим, поэтому необходимо чтобы был один и тот же экземпляр репозитория
  // для обоих экранов, по-хорошему делается с помощью библиотек для DI,
  // но пока мы до этого не дошли можно оставить так
  final MovieRepository _movieRepository = MovieRepository();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => SaveToFavoritesService(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FimClub',
        theme: ThemeData(
          primaryColor: Colors.white,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            elevation: 0,
            selectedItemColor: Colors.pink[200],
            unselectedItemColor: Colors.black38,
          ),
        ),
        routes: {
          "/home_screen": (context) => HomeScreen(
                movieRepository: _movieRepository,
              ),
          "/favorites_screen": (context) => FavoritesScreen(
                movieRepository: _movieRepository,
              ),
          "/movie_details_screen": (context) {
            final arguments = ModalRoute.of(context)?.settings.arguments;
            if (arguments is int) {
              return MovieDetails(
                movieId: arguments,
                movieRepository: _movieRepository,
              );
            } else {
              return MovieDetails(
                movieId: 0,
                movieRepository: _movieRepository,
              );
            }
          },
        },
        initialRoute: "/home_screen",
        //home: const NavBar(),
      ),
    );
  }
}
