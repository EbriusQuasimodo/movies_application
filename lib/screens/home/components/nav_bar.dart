import 'package:flutter/material.dart';
import 'package:movies_app/screens/home/components/grid_movie_list/grid_movie_model.dart';
import 'package:movies_app/models/movie_screen_model/movie_screen_model.dart';
import 'package:movies_app/resources/provider/provider.dart';
import 'package:movies_app/screens/User/user_screen.dart';
import 'package:movies_app/screens/favorites/favorites_screen.dart';
import 'package:movies_app/screens/home/components/grid_movie_list/grid_movie_list.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedPage=0;
  final movieGridModel = MovieGridModel();



  @override
  void didChangeDependedencies() {
    super.didChangeDependencies();
    movieGridModel.setupLocale(context);
  }


  void onSelectPage(int index) {
    if (_selectedPage == index) return;
    setState(() {
      _selectedPage = index;
    });
  }
  /*
  static List<Widget> widgetOptions = <Widget>[
    NotifierProvider(
        model: movieGridModel,
        child: GridMovieList(),
    ),
    FavoritesScreen(),
    UserScreen(),
  ];

   */


  @override
  Widget build(BuildContext context) {
    //final model = GridMovieProvider.read(context);
    if (movieGridModel == null) return Container(color: Colors.green);
    return Scaffold(
        body:IndexedStack(
          index: _selectedPage,
          children: [

            GridMovieProvider(
                model: movieGridModel,
                child: const GridMovieList()),
            const FavoritesScreen(),
            const UserScreen(),

          ],
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
                Icons.local_movies_sharp),
            label: 'фильмы',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.favorite),
            label: 'избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.person),
            label: 'профиль',
          ),
        ],
        onTap: onSelectPage,
      ),


    );
  }
}
