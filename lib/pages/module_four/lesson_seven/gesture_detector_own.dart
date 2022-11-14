import 'package:flutter/material.dart';

class GestureDetectorOwn extends StatefulWidget {
  static const String id = "GestureDetectorOwn";
  const GestureDetectorOwn({Key? key}) : super(key: key);

  @override
  State<GestureDetectorOwn> createState() => _GestureDetectorOwnState();
}

class _GestureDetectorOwnState extends State<GestureDetectorOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GestureDetectorOwn"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            print("Click Me");
          },
          child: const Text("Click Me"),
        ),
      ),
    );
  }
}
