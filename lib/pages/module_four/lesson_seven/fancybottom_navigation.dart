import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';

class FancyBottomNavigationOwn extends StatefulWidget {
  static const String id = "FancyBottomNavigationOwn";
  const FancyBottomNavigationOwn({Key? key}) : super(key: key);

  @override
  State<FancyBottomNavigationOwn> createState() =>
      _FancyBottomNavigationOwnState();
}

class _FancyBottomNavigationOwnState extends State<FancyBottomNavigationOwn> {
  CircularBottomNavigationController controller =
      CircularBottomNavigationController(2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FancyBottomNavigationOwn"),
      ),
      body: const Center(
        child: Text("Home"),
      ),
      bottomNavigationBar: CircularBottomNavigation(
        List.of([
          TabItem(Icons.home, "Home", Colors.blue,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold)),
          TabItem(Icons.search, "Search", Colors.orange,
              labelStyle: const TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold)),
          TabItem(Icons.layers, "Reports", Colors.red,
              circleStrokeColor: Colors.black),
          TabItem(Icons.notifications, "Notifications", Colors.cyan),
        ]),
        controller: controller,
        selectedCallback: (int? index) {
          controller.value = index;
        },
      ),
    );
  }
}
