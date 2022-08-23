import 'package:flutter/material.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({
    Key? key,
  }) : super(key: key);

  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
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
            childAspectRatio: 1.9 / 3,
            crossAxisSpacing: 25,
            mainAxisSpacing: 3,
          ),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            // final movie = gridMovieModel.movies[index];
            return Container(
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
                            'movieBloc.',
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
          },
        ),
      ),
    );
  }
}
