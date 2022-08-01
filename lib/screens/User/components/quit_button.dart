import 'package:flutter/material.dart';

class QuitButton extends StatefulWidget {
  const QuitButton({Key? key}) : super(key: key);

  @override
  State<QuitButton> createState() => _QuitButtonState();
}

class _QuitButtonState extends State<QuitButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomRight,
        child: TextButton(
          onPressed: (){},
          child: Text(
            'выход',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w300,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
