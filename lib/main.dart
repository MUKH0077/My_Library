import 'package:flutter/material.dart';
import 'package:my_library/pages/home_page.dart';
import 'package:my_library/pages/module_four/lesson_six/SingleChildScrollViewOwn.dart';
import 'package:my_library/pages/module_four/lesson_six/lesson_six_in_four.dart';
import 'package:my_library/pages/module_four/lesson_six/list_view_horizontal_own.dart';
import 'package:my_library/pages/module_four/lesson_six/list_view_vertical_own.dart';
import 'package:my_library/pages/module_four/module_four_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        ModuleFourPage.id: (context) => const ModuleFourPage(),
        LessonSixInFourPage.id: (context) => const LessonSixInFourPage(),
        SingleChildScrollViewOwn.id: (context) => const SingleChildScrollViewOwn(),
        ListViewVerticalOwn.id: (context) => const ListViewVerticalOwn(),
        ListViewHorizontalOwn.id: (context) => const ListViewHorizontalOwn(),
      }
    );
  }
}
