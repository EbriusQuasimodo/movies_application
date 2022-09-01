import 'package:flutter/material.dart';

AppBar HomeAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.black38,
    elevation: 0,
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "Film",
            style: TextStyle(color: Colors.pink[100]),
          ),
          TextSpan(
            text: "Club",
            style: TextStyle(color: Colors.pink[200]),
          ),
        ],
      ),
    ),
    centerTitle: true,
  );
}
