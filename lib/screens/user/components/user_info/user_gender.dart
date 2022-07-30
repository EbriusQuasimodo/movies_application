import 'package:flutter/material.dart';

class UserGender extends StatelessWidget {
  const UserGender({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Пол: ",
            style: TextStyle(
              color: Colors.black38,
              fontSize: 18,
            ),
          ),
          TextSpan(
            text: "Женский",
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