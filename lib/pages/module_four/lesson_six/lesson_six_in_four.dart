import 'package:flutter/material.dart';
import 'package:my_library/pages/module_four/lesson_six/PagerViewOwn.dart';
import 'package:my_library/pages/module_four/lesson_six/SingleChildScrollViewOwn.dart';
import 'package:my_library/pages/module_four/lesson_six/grid_view.dart';
import 'package:my_library/pages/module_four/lesson_six/list_view_horizontal_own.dart';
import 'package:my_library/pages/module_four/lesson_six/list_view_vertical_own.dart';
import 'package:my_library/pages/module_four/lesson_six/tap_bar_view.dart';
import 'package:my_library/pages/module_four/lesson_six/task_first.dart';

import 'bottom_Navigation_Bar.dart';

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
              child: const Text("ListViewHorizontalOwn")),
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, GridViewOwn.id);
            },
            child: const Text("GridViewOwn")),
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, PagerViewOwn.id);
            },
            child: const  Text("PagerViewOwn"),
          ),
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, BottomNavigationBarOwn.id);
            },
            child: const Text("BottomNavigationBarOwn"),
          ),
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, TapBarViewOwn.id);
            },
            child: const Text("TapBarViewOwn"),
          ),
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, TaskFirst.id);
            },
            child: const  Text("TaskFirst"),
          )
        ],
      ),
    );
  }
}
