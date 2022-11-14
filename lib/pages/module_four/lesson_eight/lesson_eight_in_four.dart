import 'package:flutter/material.dart';

import 'basic_layout_own.dart';

class LessonEightInFour extends StatefulWidget {
  static const String id = "LessonEightInFour";
  const LessonEightInFour({Key? key}) : super(key: key);

  @override
  State<LessonEightInFour> createState() => _LessonEightInFourState();
}

class _LessonEightInFourState extends State<LessonEightInFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LessonEightInFour"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, BasicLayoutOwn.id);
            },
            child: const Text("BasicLayoutOwn"),
          )
        ],
      ),
    );
  }
}