import 'package:flutter/material.dart';

class TapBarViewOwn extends StatefulWidget {
  static const String id = "TapBarViewOwn";
  const TapBarViewOwn({Key? key}) : super(key: key);

  @override
  State<TapBarViewOwn> createState() => _TapBarViewOwnState();
}

class _TapBarViewOwnState extends State<TapBarViewOwn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("TapBarViewOwn"),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home),text: "Home",),
                Tab(icon: Icon(Icons.school),text: "School",),
              ]
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.redAccent,
                child: const Center(
                  child: Text("Home"),
                ),
              ),
              Container(
                color: Colors.purpleAccent,
                child: const Center(
                  child: Text("School"),
                ),
              )
            ],
          ),
        )
    );
  }
}
