import 'package:flutter/material.dart';


class GridMovieList extends StatefulWidget {

  const GridMovieList({Key? key}) : super(key: key);

  @override
  State<GridMovieList> createState() => _GridMovieListState();
}

class _GridMovieListState extends State<GridMovieList> {

  void onMovieTap(int index) {
    final id = [index];
    Navigator.of(context).pushNamed(
      "/home_screen/movie_details_screen",
      arguments: id,
    );
  }


  @override
  Widget build(BuildContext context) {
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
            itemCount: 25,
            itemBuilder: (BuildContext context, int index){


              return Container(
                alignment: Alignment.center,
                child: InkWell(
                    onTap: () => onMovieTap(index),
                  child: Column(
                    children: [ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset('assets/images/Fight_club.jpg'),
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
                            'Название фильма',
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
                                        'дата выхода',
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
