import 'package:flutter/material.dart';

class MovieGenre extends StatelessWidget {
  const MovieGenre({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Жанр",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 5),
            Text("Триллер, драма, криминал",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ),


    );
  }
}

