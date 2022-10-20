import 'package:flutter/material.dart';
import 'package:movies_app/resources/movie_repository/movie_repository.dart';
import 'package:movies_app/screens/favorites/favorites_screen.dart';
import 'package:movies_app/screens/home/movie_screen.dart';

class NavBar extends StatefulWidget {

  final MovieRepository movieRepository;
  const NavBar({Key? key, required this.movieRepository}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedPage = 0;

  void onSelectPage(int index) {
    if (_selectedPage == index) return;
    setState(
      () {
        _selectedPage = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedPage,
        children: [
          MovieScreen(
            movieRepository: widget.movieRepository,
          ),
          FavoritesScreen(
            movieRepository: widget.movieRepository,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_movies_sharp),
            label: 'фильмы',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'избранное',
          ),
        ],
        onTap: onSelectPage,
      ),
    );
  }
}
