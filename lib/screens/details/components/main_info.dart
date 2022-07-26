import 'package:flutter/material.dart';
import 'package:movies_app/screens/home/components/grid_movie_list.dart';

class MainInfo extends StatelessWidget {
  const MainInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image(
                    image: AssetImage(
                        "assets/images/Fight_club.jpg",
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              //название и дата выхода
              Expanded(child:
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                Text("Бойцовский клуб",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black54,
                    ),
                  ),
                    SizedBox(height: 10),
                    Text("Янв 13, 2000",
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
      ),
    );
  }
}
