import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  const UserName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Имя: ",
            style: TextStyle(
              color: Colors.black38,
              fontSize: 18,
            ),
          ),
          TextSpan(
            text: "Настя",
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

