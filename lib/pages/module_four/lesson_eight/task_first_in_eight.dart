import 'package:flutter/material.dart';

class TaskFirstInEight extends StatefulWidget {
  static const String id = "TaskFirstInEight";
  const TaskFirstInEight({Key? key}) : super(key: key);

  @override
  State<TaskFirstInEight> createState() => _TaskFirstInEightState();
}

class _TaskFirstInEightState extends State<TaskFirstInEight>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _myAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    _myAnimation = Tween<double>(
      begin: 200,
      end: 120,
    ).animate(CurvedAnimation(
        parent: _controller, curve: const Interval(0, 1, curve: Curves.elasticIn))
      ..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          _controller.repeat(reverse: true);
        }
      }));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("TaskFirstInEight"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _myAnimation,
          builder: (context, ch) => Container(
            width: 200,
            height: 120,
            margin: EdgeInsets.only(top: _myAnimation.value),
            child: Image.asset("assets/images/ic_images3.jpg"),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          _controller.forward();
        },
      ),
    );
  }
}
