import 'package:flutter/material.dart';

class ActorInfo extends StatelessWidget {
  const ActorInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          Image.asset('assets/images/actor.jpg'),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text('Хелена Бонем Картер',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black54,
                    ),),
                  SizedBox(height: 8),
                  Text('Марла',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black38,),
                  ),
                ]
            ),
          ),

        ],
      ),
    );
  }
}
