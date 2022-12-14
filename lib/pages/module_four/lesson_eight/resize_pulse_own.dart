import 'package:flutter/material.dart';

class ResizePulseOwn extends StatefulWidget {
  static const String id = "ResizePulseOwn";
  const ResizePulseOwn({Key? key}) : super(key: key);

  @override
  State<ResizePulseOwn> createState() => _ResizePulseOwnState();
}

class _ResizePulseOwnState extends State<ResizePulseOwn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Size> _myAnimation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    _myAnimation = Tween<Size>(
                begin: const Size(100, 100), end: const Size(120, 120))
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
      appBar: AppBar(
        title: const Text("ResizePulseOwn"),
      ),
      body: Center(
          child: AnimatedBuilder(
                  animation: _myAnimation,
                  builder: (ctx, ch)=> Container(
                    height: _myAnimation.value.height,
                    width: _myAnimation.value.width,
                    child: Image.asset("assets/images/ic_images2.jpg"),
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
