import 'package:flutter/material.dart';
import 'package:movies_app/screens/details/components/cast_list/cast_list.dart';
import 'package:movies_app/screens/details/components/favorites_button.dart';
import 'package:movies_app/screens/details/components/main_info.dart';
import 'package:movies_app/screens/details/components/movie_description.dart';
import 'package:movies_app/screens/details/components/movie_genre.dart';
import 'package:movies_app/screens/home/components/app_bar.dart';
import 'package:movies_app/screens/home/components/nav_bar.dart';

class MovieDetails extends StatefulWidget {
  final int movieId;
  const MovieDetails({
    Key? key,
    required this.movieId,
  }) : super(key: key);


  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        elevation: 0,
        title: Text("Бойцовский клуб",
        style: TextStyle(
          color: Colors.pink[100]),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          MainInfo(),
          FavoritesButton(),
          MovieGenre(),
          Description(),
          CastList(),


        ],
      ),
    );
  }
}

