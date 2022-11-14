import 'package:flutter/material.dart';

class SlideAnimationOwn extends StatefulWidget {
  static const String id = "SlideAnimationOwn";
  const SlideAnimationOwn({Key? key}) : super(key: key);

  @override
  State<SlideAnimationOwn> createState() => _SlideAnimationOwnState();
}

class _SlideAnimationOwnState extends State<SlideAnimationOwn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _myAnimation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    _myAnimation = Tween<Offset>(
            begin: Offset.zero, end: const Offset(1.5, 0.0))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.elasticIn));
    _controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _controller.repeat();
      }
    });
    super.initState();
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
        title: const Text("ResizePulseOwn"),
      ),
      body: Center(
        child: SlideTransition(
          position: _myAnimation,
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: FlutterLogo(
              size: 150.0,
            ),
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
