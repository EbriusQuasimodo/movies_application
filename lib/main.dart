import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movies_app/models/favorites_screen_model.dart';
import 'package:movies_app/screens/details/movie_details.dart';
import 'package:movies_app/screens/favorites/favorites_screen.dart';
import 'package:movies_app/screens/home_screen.dart';
import 'package:movies_app/services/save_to_favorites_service.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter<FavoritesScreenModel>(FavoritesScreenModelAdapter());
  SaveToFavoritesService service = SaveToFavoritesService();
  service.favoritesBox();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
          "/home_screen": (context) => const HomeScreen(),
          "/favorites_screen": (context) => const FavoritesScreen(),
          "/movie_details_screen": (context) {
            final arguments = ModalRoute.of(context)?.settings.arguments;
            if (arguments is int) {
              return MovieDetails(movieId: arguments);
            } else {
              return const MovieDetails(movieId: 0);
            }
          },
        },
        initialRoute: "/home_screen",
        //home: const NavBar(),
      ),
    );
  }
}
