import 'package:flutter/material.dart';

class SingleChildScrollViewOwn extends StatefulWidget {
  static const String id = "SingleChildScrollViewOwn";
  const SingleChildScrollViewOwn({Key? key}) : super(key: key);

  @override
  State<SingleChildScrollViewOwn> createState() => _SingleChildScrollViewOwnState();
}

class _SingleChildScrollViewOwnState extends State<SingleChildScrollViewOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PDP"),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                color: Colors.deepPurple,
                height: 250,
              ),
              Container(
                color: Colors.pinkAccent,
                height: 250,
              ),
              Container(
                color: Colors.teal,
                height: 250,
              ),
              Container(
                color: Colors.brown,
                height: 250,
              ),
            ]
        ),
      )
    );
  }
}

