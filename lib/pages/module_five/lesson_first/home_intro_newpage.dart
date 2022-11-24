import 'package:flutter/material.dart';

class HomeIntroNewpage extends StatefulWidget {
  static const  String id = "HomeIntroNewpage";
  const HomeIntroNewpage({Key? key}) : super(key: key);

  @override
  State<HomeIntroNewpage> createState() => _HomeIntroNewpageState();
}

class _HomeIntroNewpageState extends State<HomeIntroNewpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome to Our World", style: TextStyle(color: Colors.red,fontSize: 40),),
      ),
    );
  }
}
