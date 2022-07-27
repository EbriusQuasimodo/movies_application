import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  const InfoText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Text('Информация о пользователе:',
        textAlign: TextAlign.right,
        style: TextStyle(
          color: Colors.black54,
          fontSize: 18,

        ),),
    );
  }
}

