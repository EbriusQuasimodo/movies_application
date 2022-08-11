import 'package:flutter/material.dart';
import 'package:movies_app/models/docs_model.dart';

import 'package:movies_app/models/movie_model.dart';
import 'package:movies_app/movie_controller/movie_controller.dart';
import 'package:movies_app/resources/api_client/api_client.dart';

import 'package:mvc_pattern/mvc_pattern.dart';

class MovieScreen extends StatefulWidget {

  MovieScreen({Key? key,}) : super(key: key);

  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends StateMVC {

  late MovieScreenController _controller;

  _MovieScreenState() : super(MovieScreenController()){
    _controller = controller as MovieScreenController;
  }

  @override
  void initState(){
    super.initState();
    _controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildContent(),
    );
  }
  Widget buildContent(){
    final state = _controller.currentState;
    if (state is MovieResultLoading){
      return Center(
        child: CircularProgressIndicator(),
      );
    }else if (state is MovieResultError){
      return Center(
        child: Text(
          state.error,
          textAlign: TextAlign.center,
        ),
      );
    }else{
      final movies = (state as MovieResultSuccess).movieList.docs;
      return Padding(
          padding: EdgeInsets.symmetric(
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
          itemCount: movies.length,
          itemBuilder: (context, index){
            return buildGridItem(movies[index]);
            },
        ),
      );
    }
  }

  Widget buildGridItem(DocsModel movie){
    return Container(

      alignment: Alignment.center,
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset('assets/images/Fight_club.jpg')
            //Image.network(movie.poster),
          ),
            SizedBox(height: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.name,
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
                            'movie.premiere_ru',
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

