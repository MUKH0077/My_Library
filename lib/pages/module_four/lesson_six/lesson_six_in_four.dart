import 'package:flutter/material.dart';
import 'package:my_library/pages/module_four/lesson_six/SingleChildScrollViewOwn.dart';
import 'package:my_library/pages/module_four/lesson_six/list_view_horizontal_own.dart';
import 'package:my_library/pages/module_four/lesson_six/list_view_vertical_own.dart';

class LessonSixInFourPage extends StatefulWidget {
  static const String id = "LessonSixInFour";
  const LessonSixInFourPage({Key? key}) : super(key: key);

  @override
  State<LessonSixInFourPage> createState() => _LessonSixInFourPageState();
}

class _LessonSixInFourPageState extends State<LessonSixInFourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LessonSixInFour"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              color: Colors.black12,
              onPressed: () {
                Navigator.pushNamed(context, SingleChildScrollViewOwn.id);
              },
              child: const Text("SingleChildScrollView")),
          MaterialButton(
              color: Colors.black12,
              onPressed: () {
                Navigator.pushNamed(context, ListViewVerticalOwn.id);
              },
              child: const Text("ListViewVerticalOwn")),
          MaterialButton(
              color: Colors.black12,
              onPressed: () {
                Navigator.pushNamed(context, ListViewHorizontalOwn.id);
              },
              child: const Text("ListViewHorizontalOwn"))
        ],
      ),
    );
  }
}
