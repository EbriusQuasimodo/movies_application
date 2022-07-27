import 'package:flutter/material.dart';
import 'package:movies_app/screens/home/components/grid_movie_list/grid_movie_model.dart';
import 'package:movies_app/resources/api_clients/api_clien_test.dart';


class GridMovieList extends StatefulWidget {

  const GridMovieList({Key? key}) : super(key: key);

  @override
  State<GridMovieList> createState() => _GridMovieListState();
}

class _GridMovieListState extends State<GridMovieList> {


  @override
  Widget build(BuildContext context) {
    final model = GridMovieProvider.watch(context)?.model;
    if (model == null) return Container(color: Colors.pink);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 9,
        ),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 310,
              childAspectRatio: 1.9/3,
              crossAxisSpacing: 25,
              mainAxisSpacing: 3,
            ),
            itemCount: model.movies.length,
            itemBuilder: (BuildContext context, int index){
              final movie = model.movies[index];
              final posterPath = movie.posterPath;
              return Container(
                alignment: Alignment.center,
                child: InkWell(
                    onTap: () => model.onMovieTap(context, index),
                  child: Column(
                    children: [ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Text('image'),
                        /*
                    posterPath != null
                        ? Image.network(ApiClientTest.imageUrl(posterPath),)
                        : Container(color: Colors.blue),

                         */
                    ),
                      SizedBox(height: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movie.title,
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          //SizedBox(height: 20,width: 20,),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        movie.releaseDate,
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
            ),
      ),
    );
  }
}
