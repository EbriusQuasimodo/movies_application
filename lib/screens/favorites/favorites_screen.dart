import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 290,
        ),
        itemBuilder: (BuildContext context, int index) {
          return _buildMovieItem();
        },
      ),
    );
  }

  Widget _buildMovieItem() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                color: Colors.black12,
              ),
              //element.poster?.previewUrl == null
              //? Container(
              //color: Colors.black12,
              //: Image.network(element.poster?.previewUrl ?? ''),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "название",
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'дата',
          style: TextStyle(
            color: Colors.black26,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
