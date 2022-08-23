import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/screens/details/components/cast_list/list_view_cast.dart';

class CastList extends StatefulWidget {
  const CastList({Key? key}) : super(key: key);

  @override
  State<CastList> createState() => _CastListState();
}

class _CastListState extends State<CastList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ColoredBox(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              'Актеры',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Colors.black54,
              ),
            ),
          ),
          ListViewCast(),
        ],
      ),
    );
  }
}
