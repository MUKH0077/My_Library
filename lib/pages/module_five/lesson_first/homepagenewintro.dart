import 'package:flutter/material.dart';

class HomePageNewIntro extends StatefulWidget {
  static const String id ="HomePageNewIntro";
  const HomePageNewIntro({Key? key}) : super(key: key);

  @override
  State<HomePageNewIntro> createState() => _HomePageNewIntroState();
}

class _HomePageNewIntroState extends State<HomePageNewIntro> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Welcome to Introoo"),
      ),
    );
  }
}
