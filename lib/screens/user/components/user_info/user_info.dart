import 'package:flutter/material.dart';
import 'package:movies_app/screens/User/components/info_text.dart';
import 'package:movies_app/screens/User/components/user_info/user_age.dart';
import 'package:movies_app/screens/User/components/user_info/user_gender.dart';
import 'package:movies_app/screens/User/components/user_info/user_genre.dart';
import 'package:movies_app/screens/User/components/user_info/user_name.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoText(),
            SizedBox(height: 15),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.black12,
            ),
            SizedBox(height: 15),
            UserName(),
            SizedBox(height: 15),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.black12,
            ),
            SizedBox(height: 15),
            UserAge(),
            SizedBox(height: 15),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.black12,
            ),
            SizedBox(height: 15),
            UserGender(),
            SizedBox(height: 15),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.black12,
            ),
            SizedBox(height: 15),
            UserGenre(),

          ],
        ),
      );
  }
}




