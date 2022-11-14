import 'package:flutter/material.dart';

class ContainerDecorationOwn extends StatefulWidget {
  static const String id = "ContainerDecorationOwn";
  const ContainerDecorationOwn({Key? key}) : super(key: key);

  @override
  State<ContainerDecorationOwn> createState() => _ContainerDecorationOwnState();
}

class _ContainerDecorationOwnState extends State<ContainerDecorationOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("ContainerDecorationOwn"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage("assets/images/ic_images2.jpg"),
              fit: BoxFit.cover
            )
          )
        ),
      ),
    );
  }
}
