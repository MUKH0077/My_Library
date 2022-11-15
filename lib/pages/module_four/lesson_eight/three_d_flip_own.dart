import 'package:flutter/material.dart';

class ThreeDflipOwn extends StatefulWidget {
  static const String id = "ThreeDflipOwn";
  const ThreeDflipOwn({Key? key}) : super(key: key);

  @override
  State<ThreeDflipOwn> createState() => _ThreeDflipOwnState();
}

class _ThreeDflipOwnState extends State<ThreeDflipOwn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _myAnimation;
  AnimationStatus status = AnimationStatus.dismissed;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    _myAnimation = (Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((statusListen) {
        status = statusListen;
      })) ;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ThreeDflipOwn"),
      ),
      body: Center(
        child: Transform(
          alignment: FractionalOffset.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.002)
            ..rotateX(3.14 * _myAnimation.value),
          child: Container(
            color: Colors.lightGreenAccent,
            width: 200,
            height: 200,
            child: const Icon(
              Icons.accessibility_new,
              color: Colors.lightGreen,
              size: 50,
            ),
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
