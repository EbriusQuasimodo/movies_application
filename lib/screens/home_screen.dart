import 'package:flutter/material.dart';
import 'package:movies_app/resources/movie_repository/movie_repository.dart';
import 'package:movies_app/screens/home/components/app_bar.dart';
import 'package:movies_app/screens/nav_bar.dart';

class HomeScreen extends StatefulWidget {
  final MovieRepository movieRepository;

  const HomeScreen({
    Key? key,
    required this.movieRepository,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(context),
      body: NavBar(
        movieRepository: widget.movieRepository,
      ),
    );
  }
}
