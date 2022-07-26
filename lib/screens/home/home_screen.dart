import 'package:flutter/material.dart';
import 'package:movies_app/screens/home/components/app_bar.dart';
import 'package:movies_app/screens/home/components/nav_bar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(context),
      body: NavBar(),

    );
  }
}

