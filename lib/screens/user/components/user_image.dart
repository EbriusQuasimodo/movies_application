import 'package:flutter/material.dart';

class UserImage extends StatelessWidget {
  const UserImage({
    Key? key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      textDirection: TextDirection.ltr,
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Image.asset(
          'assets/images/avatar.jpg',
          height: size.height*0.4,
          width: double.infinity,
          fit: BoxFit.fill,),
        Container(
          width: double.infinity,
          height: 50,
          //color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 15,),
            child: Text('EbriusQuasimodo',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
        ),
      ],
    );
  }
}


