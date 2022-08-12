
import 'package:flutter/material.dart';
import 'package:movies_app/resources/api_client/api_client_dio.dart';


class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {

  final apiClient = ApiClientDio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink[100],
        child: ElevatedButton(
          onPressed: () => apiClient.getMovieDio(),
          child: Text('проверка апи'),
        )
        ),
        );
  }
}
