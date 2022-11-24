import 'package:flutter/material.dart';
import 'package:my_library/pages/module_five/lesson_first/login_ui_own.dart';
import 'package:my_library/pages/module_five/lesson_first/samsung_shop_ui_own.dart';
import 'package:my_library/pages/module_five/lesson_first/task_intro_own.dart';
import 'package:my_library/pages/module_five/lesson_first/task_one_in_five.dart';
import 'package:my_library/pages/module_five/lesson_first/task_second_own.dart';
import 'package:my_library/pages/module_five/lesson_first/user_interface.dart';

import 'intro_app_own.dart';

class LessonFirstInFive extends StatefulWidget {
  static const String id = "LessonFirstInFive";
  const LessonFirstInFive({Key? key}) : super(key: key);

  @override
  State<LessonFirstInFive> createState() => _LessonFirstInFiveState();
}

class _LessonFirstInFiveState extends State<LessonFirstInFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LessonFirstInFive"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        MaterialButton(
        color: Colors.black12,
        onPressed: () {
          Navigator.pushNamed(context, UserInterfaceOwn.id);
        },
        child: const Text("UserInterfaceOwn"),
      ),
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, LoginUiOwn.id);
            },
            child: const Text("LoginUiOwn"),
          ),
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, TaskOneOwn.id);
            },
            child: const Text("TaskOneOwn"),
          ),
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, SamsungShopUiOwn.id);
            },
            child: const Text("SamsungShopUiOwn"),
          ),
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, TaskSecondInFive.id);
            },
            child: const Text("TaskSecondInFive"),
          ),
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, IntroAppOwn.id);
            },
            child: const Text("IntroAppOwn"),
          ),
          MaterialButton(
            color: Colors.black12,
            onPressed: () {
              Navigator.pushNamed(context, TaskIntroOwn.id);
            },
            child: const Text("TaskIntroOwn"),
          ),
      ],
      ),
    );
  }
}
