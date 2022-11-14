import 'package:flutter/material.dart';

class PagerViewOwn extends StatefulWidget {
  static const String id = "PagerViewOwn";
  const PagerViewOwn({Key? key}) : super(key: key);

  @override
  State<PagerViewOwn> createState() => _PagerViewOwnState();
}

class _PagerViewOwnState extends State<PagerViewOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PagerViewOwn"),
      ),
      body:PageView(
        children: [
          Container(
            color: Colors.lightGreen,
            child: const Center(
              child: Text("Page One"),
            ),

          ),
          Container(
            color: Colors.amberAccent,
            child: const Center(
              child: Text("Page Two"),
            ),

          ),
          Container(
            color: Colors.cyanAccent,
            child: const Center(
              child: Text("Page Three"),
            ),

          )

        ]
      ),
    );
  }
}
