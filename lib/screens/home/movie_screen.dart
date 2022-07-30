import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/bloc/movie_bloc/movies_bloc.dart';
import 'package:movies_app/resources/api_client/api_client.dart';

import 'package:movies_app/screens/home/components/movie_grid.dart';

class MovieScreen extends StatelessWidget {

  MovieScreen({Key? key,}) : super(key: key);

  final apiClient = ApiClient();



  @override
  Widget build(BuildContext context) {
    //final model = GridMovieProvider.watch(context)?.model;
   // if (model == null) return Container(color: Colors.pink);
    return Scaffold(
      body: BlocProvider(
        create: (context) => MoviesBloc(apiClient: apiClient),
        child: MovieGrid(),
      ),
    );
  }
}

