import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/bloc/movie_details_bloc/movie_details_bloc.dart';
import 'package:movies_app/models/movie_details_model.dart';
import 'package:movies_app/resources/movie_repository/movie_repository.dart';

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
  final MovieRepository movieRepository = MovieRepository();

  late final MovieDetailsBloc _bloc = MovieDetailsBloc(
      movieRepository: movieRepository, movieId: widget.movieId)
    ..add(GetMovieDetailsEvent());

  @override
  Widget build(BuildContext context) {
    print(widget.movieId);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        elevation: 0,
        title: Text(
          'Детали фильма',
          style: TextStyle(color: Colors.pink[100]),
        ),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (_) => _bloc,
        child: _detailsBloc(context),
      ),
    );
  }

  Widget _detailsBloc(BuildContext context) {
    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      builder: (context, state) {
        print(state.runtimeType);
        if (state.status == MovieDetailsStatus.error) {
          return const Text('error');
        }
        if (state.status == MovieDetailsStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.status == MovieDetailsStatus.success) {
          return ListView(
            children: [
              _buildMainInfo(context, state.loadMovies[widget.movieId]),
            ],
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget _buildMainInfo(BuildContext context, MovieDetailsModel element) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Image.network(element.poster?.url ?? '')),
          ),
          const SizedBox(width: 15),
          //название и дата выхода
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'element.name ??''',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'element.year.toString()',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
