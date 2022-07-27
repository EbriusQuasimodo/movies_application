import 'package:flutter/material.dart';
import 'package:movies_app/screens/User/components/info_text.dart';
import 'package:movies_app/screens/User/components/user_image.dart';
import 'package:movies_app/screens/User/components/user_info/user_info.dart';

import 'package:movies_app/screens/home/components/app_bar.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          UserImage(),
          UserInfo(),
        ],
      ),


    );
  }

}

