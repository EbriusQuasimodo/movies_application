import 'package:flutter/material.dart';

class UserGenre extends StatelessWidget {
  const UserGenre({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Любимый жанр: ",
            style: TextStyle(
              color: Colors.black38,
              fontSize: 18,
            ),
          ),
          TextSpan(
            text: "Фэнтези",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
