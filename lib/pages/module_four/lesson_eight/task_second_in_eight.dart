import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskSecondInEight extends StatefulWidget {
  static const String id = "TaskSecondInEight";
  const TaskSecondInEight({Key? key}) : super(key: key);

  @override
  State<TaskSecondInEight> createState() => _TaskSecondInEightState();
}

class _TaskSecondInEightState extends State<TaskSecondInEight>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Size> _myAnimation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    _myAnimation = Tween<Size>(
        begin: const Size(200, 200), end: const Size(120, 120))
        .animate(
        CurvedAnimation(parent: _controller, curve: Curves.bounceIn));

    _controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _controller.repeat();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text("TaskSecondInEight"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _myAnimation,
          builder: (ctx, ch)=> Container(
            height: _myAnimation.value.height,
            width: _myAnimation.value.width,
            child: Image.asset("assets/images/ic_images4.jpg"),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          _controller.forward();
        },
      ),
    );
  }
}
