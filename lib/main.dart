import 'package:flutter/material.dart';
import 'package:movies_app/screens/details/movie_details.dart';
import 'package:movies_app/screens/favorites/favorites_screen.dart';
import 'package:movies_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FimClub',
      theme: ThemeData(
        primaryColor: Colors.white,

        bottomNavigationBarTheme:BottomNavigationBarThemeData(
          elevation: 0,
          selectedItemColor: Colors.pink[200],
          unselectedItemColor: Colors.black38,
        ),
      ),


      routes: {
        "/home_screen": (context) => HomeScreen(),
        "/favorites_screen":(context)=>FavoritesScreen(),
        "/home_screen/movie_details_screen":(context){
          final arguments = ModalRoute.of(context)?.settings.arguments;
          if (arguments is int){
            return MovieDetails(movieId: arguments);
          }else{
            return MovieDetails(movieId: 0);
          }
        },
      },
      initialRoute: "/home_screen",

      home: const HomeScreen(),
    );
  }
}

