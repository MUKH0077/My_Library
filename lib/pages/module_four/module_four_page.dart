import 'package:flutter/material.dart';
import 'package:my_library/pages/module_four/lesson_six/lesson_six_in_four.dart';

class ModuleFourPage extends StatefulWidget {
  static const String id = "ModuleFourPage";
  const ModuleFourPage({Key? key}) : super(key: key);
  @override
  State<ModuleFourPage> createState() => _ModuleFourPageState();
}

class _ModuleFourPageState extends State<ModuleFourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ModuleFourPage"),
      ),
      body: Column(
        children: [
        MaterialButton(
          color: Colors.cyan,
          onPressed: () {
            Navigator.pushNamed(context, LessonSixInFourPage.id);
          },
          child: const Text("LessonSixInFourPage")
        )
        ]
      ),
    );
  }
}
