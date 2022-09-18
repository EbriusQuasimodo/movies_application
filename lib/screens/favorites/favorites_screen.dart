import 'package:flutter/material.dart';
import 'package:movies_app/resources/api_client/api_client_dio.dart';
import 'package:movies_app/resources/movie_repository/movie_repository.dart';

class FavoritesScreen extends StatefulWidget {



  const FavoritesScreen({Key? key,}) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final apiClient = ApiClientDio();
  final MovieRepository movieRepository = MovieRepository();

/*
  late final FavoritesScreenBloc _bloc = FavoritesScreenBloc(
      movieRepository: movieRepository, movieId: widget.movieId)
    ..add(GetFavoritesMovieEvent());

 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          /*
      BlocProvider(
        create: (_) => _bloc,
        child:
        ),

           */
        //_favoritesBloc(context),
        Container(color: Colors.yellowAccent,),
    );

  }

  /*
  Widget _favoritesBloc(BuildContext context) {
    return BlocBuilder<FavoritesScreenBloc, FavoritesScreenState>(
      builder: (context, state) {
        if (state.status == FavoritesMovieStatus.error) {
          return const Text('error');
        }
        if (state.status == FavoritesMovieStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.status == FavoritesMovieStatus.success) {
          return _info(context, state.loadedMovie!);
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget _info(BuildContext context, FavoritesMovieModel element) {
    return Text(element.name ??'');
  }

   */
}
