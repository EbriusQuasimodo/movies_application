import 'package:flutter/material.dart';
import 'package:movies_app/models/model.dart';
import 'package:movies_app/resources/api_client/api_client_dio.dart';


class MovieScreen extends StatefulWidget {

  MovieScreen({Key? key,}) : super(key: key);

  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildContent(),
    );
  }
  Widget buildContent(){
      return Padding(
          padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 9,
      ),
        child: FutureBuilder<List<Doc>>(
            future: ApiClientDio().getMovieDio(),
            builder: (context, snapshot) {
              if(!snapshot.hasData){
                return Center(child: CircularProgressIndicator(),);
              }else{
                return GridView.builder(
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
                                      snapshot.data![index].name,
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
                );
              }
            }
        ),

      );

  }

}

