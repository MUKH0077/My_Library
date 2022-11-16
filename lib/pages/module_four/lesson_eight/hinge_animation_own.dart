import 'package:flutter/material.dart';

class HingeAnimationOwn extends StatefulWidget {
  static const String id = "HingeAnimationOwn";

  const HingeAnimationOwn({Key? key}) : super(key: key);

  @override
  State<HingeAnimationOwn> createState() => _HingeAnimationOwnState();
}

class _HingeAnimationOwnState extends State<HingeAnimationOwn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _slideAnimation;
  late Animation<double> _rotateAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000));
    _rotateAnimation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.bounceInOut)));
    _slideAnimation = Tween(begin: 100.0, end: 600.0).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1.0, curve: Curves.bounceInOut)));
    _opacityAnimation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1.0, curve: Curves.bounceInOut)));
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
        title: const Text("HingeAnimationOwn"),
      ),
      body: AnimatedBuilder(
        animation: _slideAnimation,
        builder: (context, ch) => Container(
          width: 350,
          height: 100,
          padding: const EdgeInsets.all(0),
          margin: EdgeInsets.only(left: 75, top: _slideAnimation.value),
          child: RotationTransition(
            turns: _rotateAnimation,
            child: Center(
              child: Text(
                "HingeAnimationOwn",
                style: TextStyle(
                    fontSize: 40,
                    color: Color.fromRGBO(0, 0, 128, _opacityAnimation.value)),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          _controller.repeat();
        },
      ),
    );
  }
}
