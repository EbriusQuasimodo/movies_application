import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/bloc/movie_screen_bloc/movie_screen_bloc.dart';

class MovieGrid extends StatelessWidget {
  const MovieGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final MovieScreenBloc movieScreenBloc = context.read<MovieScreenBloc>();
    return BlocBuilder<MovieScreenBloc, MovieScreenState>(
      builder: (context, state) {
        if (state is InitialMovieScreenState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is LoadedMovieScreenState) {
          return _movieGrid(state);
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Widget _movieGrid(state) {
    //final MovieScreenBloc movieScreenBloc = context.read<MovieScreenBloc>();
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 310,
        childAspectRatio: 1.9 / 3,
        crossAxisSpacing: 25,
        mainAxisSpacing: 3,
      ),
      itemCount: state.loadedMovies.length,
      itemBuilder: (BuildContext context, int index) {
        return _movieItems();
      },
    );
  }

  _movieItems() {
    //final MovieScreenBloc movieScreenBloc = context.read<MovieScreenBloc>();
    Container(
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              child: Image.asset('assets/images/Fight_club.jpg'),
              //Image.network(movie.),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'kj',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  //SizedBox(height: 20,width: 20,),
                  Row(
                    children: [
                      Column(
                        children: const [
                          Text(
                            'дата выпуска',
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.black26,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*
Padding(
padding: const EdgeInsets.symmetric(
horizontal: 16,
vertical: 9,
),
child:

 */
