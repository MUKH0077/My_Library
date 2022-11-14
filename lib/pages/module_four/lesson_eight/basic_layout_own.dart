import 'package:flutter/material.dart';

class BasicLayoutOwn extends StatefulWidget {
  static const String id = "BasicLayoutOwn";
  const BasicLayoutOwn({Key? key}) : super(key: key);

  @override
  State<BasicLayoutOwn> createState() => _BasicLayoutOwnState();
}

class _BasicLayoutOwnState extends State<BasicLayoutOwn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _myAnimation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    _myAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
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
        title: const Text("BasicLayoutOwn"),
      ),
      body: Center(
          child: FadeTransition(
              opacity: _myAnimation,
              child: SizedBox(
                height: 300,
                width: 300,
                child: Image.asset("assets/images/ic_images2.jpg"),
              ))),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          _controller.forward();
        },
      ),
    );
  }
}
