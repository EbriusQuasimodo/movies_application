import 'package:flutter/material.dart';

class UserAge extends StatelessWidget {
  const UserAge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Возраст: ",
            style: TextStyle(
              color: Colors.black38,
              fontSize: 18,
            ),
          ),
          TextSpan(
            text: "20",
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
