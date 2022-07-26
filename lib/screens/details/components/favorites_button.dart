import 'package:flutter/material.dart';


class FavoritesButton extends StatelessWidget {
  const FavoritesButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
          onPressed: (){
          },
          child: Text("Добавить в избранное"),
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),),),
              backgroundColor: MaterialStateProperty.all(Colors.pink[100])
          ),
        ),
      ),
    );
  }
}