import 'package:flutter/material.dart';
import 'package:my_library/pages/module_five/lesson_first/lesson_first_in_five.dart';

import 'lesson_first/user_interface.dart';

class ModuleFivePage extends StatefulWidget {
  static const String id = "ModuleFivePage";
  const ModuleFivePage({Key? key}) : super(key: key);

  @override
  State<ModuleFivePage> createState() => _ModuleFivePageState();
}

class _ModuleFivePageState extends State<ModuleFivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ModuleFivePage"),
      ),
      body: Column(
        children: [
          MaterialButton(
              color: Colors.cyan,
              onPressed: () {
                Navigator.pushNamed(context, LessonFirstInFive.id);
              },
              child: const Text("LessonFirstInFive")
          ),
        ],
      ),
    );
  }
}
