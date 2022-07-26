import 'package:flutter/material.dart';

class MovieList extends StatefulWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemExtent: 163,
      itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 9,
          ),
          child: Stack(
            children: [
              Container(
              decoration: BoxDecoration(
                  color: Colors.pink.shade50,
                  border: Border.all(
                    color: Colors.pink.shade50,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                boxShadow:[
                  BoxShadow(
                    color: Colors.pink.shade500.withOpacity(0.15),
                    blurRadius: 13,
                    offset: Offset(0,3),
                  ),
                ],
              ),
                 clipBehavior: Clip.hardEdge,
                 child: Row(
                  children: [
                    Image(
                        image:
                        AssetImage("assets/images/Fight_club.jpg"),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                        Text("Fight Club",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                        ),
                          SizedBox(height: 7),
                        Text("Jan  13, 2000",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black38,
                          ),
                        ),
                          SizedBox(height: 20),
                        Text("An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.",
                        maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              //Material(
                //color: Colors.transparent,
                //child: InkWell(
                 // borderRadius: BorderRadius.circular(10),
                  //onTap: () => _onMovieTap(index),
               // ),
             // )
            ],
          ),
        );
      }
      );
  }
}
