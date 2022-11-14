import 'package:flutter/material.dart';
import 'package:my_library/pages/home_page.dart';
import 'package:my_library/pages/module_four/lesson_eight/basic_layout_own.dart';
import 'package:my_library/pages/module_four/lesson_eight/lesson_eight_in_four.dart';
import 'package:my_library/pages/module_four/lesson_eight/resize_pulse_own.dart';
import 'package:my_library/pages/module_four/lesson_eight/slide_animation_own.dart';
import 'package:my_library/pages/module_four/lesson_seven/container_decoration_own.dart';
import 'package:my_library/pages/module_four/lesson_seven/container_gradient_own.dart';
import 'package:my_library/pages/module_four/lesson_seven/customized_TextField.dart';
import 'package:my_library/pages/module_four/lesson_seven/customized_TextFormFieldOwn.dart';
import 'package:my_library/pages/module_four/lesson_seven/customized_button.dart';
import 'package:my_library/pages/module_four/lesson_seven/fancybottom_navigation.dart';
import 'package:my_library/pages/module_four/lesson_seven/gesture_detector_own.dart';
import 'package:my_library/pages/module_four/lesson_seven/lesson_seven_in_four.dart';
import 'package:my_library/pages/module_four/lesson_seven/navigation_rail_own.dart';
import 'package:my_library/pages/module_four/lesson_seven/sliver_app_bar_own.dart';
import 'package:my_library/pages/module_four/lesson_seven/speed_dial_own.dart';
import 'package:my_library/pages/module_four/lesson_seven/task_firstt.dart';
import 'package:my_library/pages/module_four/lesson_seven/task_second.dart';
import 'package:my_library/pages/module_four/lesson_six/PagerViewOwn.dart';
import 'package:my_library/pages/module_four/lesson_six/SingleChildScrollViewOwn.dart';
import 'package:my_library/pages/module_four/lesson_six/bottom_Navigation_Bar.dart';
import 'package:my_library/pages/module_four/lesson_six/grid_view.dart';
import 'package:my_library/pages/module_four/lesson_six/lesson_six_in_four.dart';
import 'package:my_library/pages/module_four/lesson_six/list_view_horizontal_own.dart';
import 'package:my_library/pages/module_four/lesson_six/list_view_vertical_own.dart';
import 'package:my_library/pages/module_four/lesson_six/tap_bar_view.dart';
import 'package:my_library/pages/module_four/lesson_six/task_first.dart';
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
        GridViewOwn.id: (context) => const GridViewOwn(),
        PagerViewOwn.id: (context) => const PagerViewOwn(),
        BottomNavigationBarOwn.id: (context) => const BottomNavigationBarOwn(),
        TapBarViewOwn.id: (context) => const TapBarViewOwn(),
        TaskFirst.id: (context) => const TaskFirst(),
        ContainerDecorationOwn.id: (context) => const ContainerDecorationOwn(),
        LessonSevenInFour.id: (context) => const LessonSevenInFour(),
        ContainerGradientOwn.id: (context) => const ContainerGradientOwn(),
        CustomizedButtonOwn.id: (context) => const CustomizedButtonOwn(),
        GestureDetectorOwn.id: (context) => const GestureDetectorOwn(),
        CustomizedTextFieldOwn.id: (context) => const CustomizedTextFieldOwn(),
        CustomizedTextFormFieldOwn.id: (context) => const CustomizedTextFormFieldOwn(),
        SpeedDialOwn.id: (context) => const SpeedDialOwn(),
        FancyBottomNavigationOwn.id: (context) => const FancyBottomNavigationOwn(),
        SliverAppBarOwn.id: (context) => const SliverAppBarOwn(),
        NavigationRailOwn.id: (context) => const  NavigationRailOwn(),
        TaskFirstOwn.id: (context) => const TaskFirstOwn(),
        TaskSecondOwn.id: (context) => const TaskSecondOwn(),
        LessonEightInFour.id: (context) => const LessonEightInFour(),
        BasicLayoutOwn.id: (context) => const BasicLayoutOwn(),
        ResizePulseOwn.id: (context) => const ResizePulseOwn(),
        SlideAnimationOwn.id: (context) => const SlideAnimationOwn(),
      }
    );
  }
}
