import 'package:flutter/material.dart';
import 'package:my_library/pages/module_four/lesson_eight/resize_pulse_own.dart';
import 'package:my_library/pages/module_four/lesson_eight/slide_animation_own.dart';
import 'package:my_library/pages/module_four/lesson_eight/task_first_in_eight.dart';
import 'package:my_library/pages/module_four/lesson_eight/task_second_in_eight.dart';
import 'package:my_library/pages/module_four/lesson_eight/three_d_flip_own.dart';

import '../../module_five/lesson_first/user_interface.dart';
import 'basic_layout_own.dart';
import 'bounce_animation_own.dart';
import 'hinge_animation_own.dart';

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
          ),
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, ResizePulseOwn.id);
            },
            child: const Text("ResizePulseOwn"),
          ),
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, SlideAnimationOwn.id);
            },
            child: const Text("SlideAnimationOwn"),
          ),
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, BounceAnimationOwn.id);
            },
            child: const Text("BounceAnimationOwn"),
          ),
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, ThreeDflipOwn.id);
            },
            child: const Text("ThreeDflipOwn"),
          ),
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, HingeAnimationOwn.id);
            },
            child: const Text("HingeAnimationOwn"),
          ),
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, TaskFirstInEight.id);
            },
            child: const Text("TaskFirstInEight"),
          ),
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, TaskSecondInEight.id);
            },
            child: const Text("TaskSecondInEight"),
          ),
        ],
      ),
    );
  }
}
