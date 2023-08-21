import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/bloc/movie_screen_bloc/movie_screen_bloc.dart';
import 'package:movies_app/models/movie_model.dart';
import 'package:movies_app/resources/movie_repository/movie_repository.dart';

class MovieScreen extends StatefulWidget {
  final MovieRepository movieRepository;

  const MovieScreen({Key? key, required this.movieRepository})
      : super(key: key);

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  late final MovieScreenBloc _bloc =
      MovieScreenBloc(movieRepository: widget.movieRepository)
        ..add(GetMoviesEvent(shouldShowProgress: true));
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(
      () {
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent) {
          _bloc.add(GetMoviesEvent(shouldShowProgress: false));
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  void _onMovieTap(int index) {
    final id = _bloc.state.loadMovies[index].id;
    Navigator.of(context).pushNamed('/movie_details_screen', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => _bloc,
        child: _movieBloc(context),
      ),
    );
  }

  Widget _movieBloc(BuildContext context) {
    return BlocBuilder<MovieScreenBloc, MovieScreenState>(
      builder: (context, state) {
        bool isLoading = false;
        if (state.status == MovieStatus.error) {
          return const Text('error');
        }
        if (state.status == MovieStatus.loading) {
          return _progressIndicator();
        }
        if (state.status == MovieStatus.success) {
          return CustomScrollView(
            controller: scrollController,
              slivers: <Widget>[
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 290,
             ),
              delegate: SliverChildBuilderDelegate((c,index){return _buildMovieItem(context, state.loadMovies[index], index);},
                  childCount: state.loadMovies.length),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: CupertinoActivityIndicator(),
              ),
            ),
          ]);
            //GridView.builder(
           // controller: scrollController,
           // padding: const EdgeInsets.all(10),
           // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //  crossAxisCount: 2,
            //  mainAxisExtent: 290,
           // ),
           // itemBuilder: (BuildContext context, int index) {
           //   if (index >= state.loadMovies.length) {
            //      return CupertinoActivityIndicator();
            //  } else {
            //    return _buildMovieItem(
            //        context, state.loadMovies[index], index);
             // }
           // },
            //itemCount: state.loadMovies.length +1,
         // );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget _buildMovieItem(
      BuildContext context, MovieModel element, int index) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            child: GestureDetector(
              onTap: () => _onMovieTap(index),
              child: element.poster?.previewUrl == null
                  ? Container(
                      color: Colors.black12,
                    )
                  : Image.network(element.poster?.previewUrl ?? ''),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          element.name ?? '',
          style: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          element.year?.toString() ?? '',
          style: const TextStyle(
            color: Colors.black26,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }

  Widget _progressIndicator() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}
