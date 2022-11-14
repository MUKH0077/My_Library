import 'package:flutter/material.dart';
import 'package:my_library/pages/module_four/lesson_seven/container_decoration_own.dart';
import 'package:my_library/pages/module_four/lesson_seven/container_gradient_own.dart';
import 'package:my_library/pages/module_four/lesson_seven/customized_TextField.dart';
import 'package:my_library/pages/module_four/lesson_seven/customized_TextFormFieldOwn.dart';
import 'package:my_library/pages/module_four/lesson_seven/customized_button.dart';
import 'package:my_library/pages/module_four/lesson_seven/gesture_detector_own.dart';
import 'package:my_library/pages/module_four/lesson_seven/navigation_rail_own.dart';
import 'package:my_library/pages/module_four/lesson_seven/sliver_app_bar_own.dart';
import 'package:my_library/pages/module_four/lesson_seven/speed_dial_own.dart';
import 'package:my_library/pages/module_four/lesson_seven/task_firstt.dart';
import 'package:my_library/pages/module_four/lesson_seven/task_second.dart';

import 'fancybottom_navigation.dart';

class LessonSevenInFour extends StatefulWidget {
  static const String id ="LessonSevenInFour";
  const LessonSevenInFour({Key? key}) : super(key: key);

  @override
  State<LessonSevenInFour> createState() => _LessonSevenInFourState();
}

class _LessonSevenInFourState extends State<LessonSevenInFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LessonSevenInFour"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, ContainerDecorationOwn.id);
            },
            child: const Text ( "ContainerDecorationOwn")
      ),
          MaterialButton(
              color: Colors.black12,
              onPressed: () {
                Navigator.pushNamed(context, ContainerGradientOwn.id);
              },
              child: const Text ( "ContainerGradientOwn")
          ),
          MaterialButton(
              color: Colors.black12,
              onPressed: () {
                Navigator.pushNamed(context, CustomizedButtonOwn.id);
              },
              child: const Text ( "CustomizedButtonOwn")
          ),
          MaterialButton(
              color: Colors.black12,
              onPressed: () {
                Navigator.pushNamed(context, GestureDetectorOwn.id);
              },
              child: const Text ( "GestureDetectorOwn")
          ),
          MaterialButton(
              color: Colors.black12,
              onPressed: () {
                Navigator.pushNamed(context, CustomizedTextFieldOwn.id);
              },
              child: const Text ( "CustomizedTextFieldOwn")
          ),
          MaterialButton(
              color: Colors.black12,
              onPressed: () {
                Navigator.pushNamed(context, CustomizedTextFormFieldOwn.id);
              },
              child: const Text ( "CustomizedTextFormFieldOwn")
          ),
          MaterialButton(
              color: Colors.black12,
              onPressed: () {
                Navigator.pushNamed(context, SpeedDialOwn.id);
              },
              child: const Text ( "SpeedDialOwn")
          ),
          MaterialButton(
              color: Colors.black12,
              onPressed: () {
                Navigator.pushNamed(context, FancyBottomNavigationOwn.id);
              },
              child: const Text ( "FancyBottomNavigationOwn")
          ),
          MaterialButton(
              color: Colors.black12,
              onPressed: () {
                Navigator.pushNamed(context, SliverAppBarOwn.id);
              },
              child: const Text ( "SliverAppBarOwn")
          ),
          MaterialButton(
              color: Colors.black12,
              onPressed: () {
                Navigator.pushNamed(context, NavigationRailOwn.id);
              },
              child: const Text ( "NavigationRailOwn")
          ),
          MaterialButton(
              color: Colors.black12,
              onPressed: () {
                Navigator.pushNamed(context, TaskFirstOwn.id);
              },
              child: const Text ( "TaskFirstOwn")
          ),MaterialButton(
              color: Colors.black12,
              onPressed: () {
                Navigator.pushNamed(context, TaskSecondOwn.id);
              },
              child: const Text ( "TaskSecondOwn")
          ),
        ],
      ),
    );
  }
}
