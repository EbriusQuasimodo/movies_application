import 'package:flutter/material.dart';
//это нигде не используется, все подключено к movie_screen.dart
class MovieGrid extends StatefulWidget {
  const MovieGrid({
    Key? key,
  }) : super(key: key);

  @override
  State<MovieGrid> createState() => _MovieGridState();
}

class _MovieGridState extends State<MovieGrid> {

  @override
  Widget build(BuildContext context) {
      return Padding(
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
          itemCount: 10,

          itemBuilder: (BuildContext context, int index){
            // final movie = gridMovieModel.movies[index];

            return Container(

              alignment: Alignment.center,
              child: InkWell(
                onTap: () {},
                child: Column(
                  children: [ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.asset('assets/images/Fight_club.jpg')
                    //Image.network(movie.),


                  ),
                    SizedBox(height: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'название фильма',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          //SizedBox(height: 20,width: 20,),
                          Row(
                            children: [
                              Column( //можно попробовать завернуть в Align чтобы расположить по правой нижней стороне
                                children: [
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
      ),
    );
  }

 }
