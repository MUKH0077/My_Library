import 'package:flutter/material.dart';

class CustomizedButtonOwn extends StatefulWidget {
  static const String id = "CustomizedButtonOwn";
  const CustomizedButtonOwn({Key? key}) : super(key: key);

  @override
  State<CustomizedButtonOwn> createState() => _CustomizedButtonOwnState();
}

class _CustomizedButtonOwnState extends State<CustomizedButtonOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CustomizedButtonOwn"),
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        width: 200,
        height: 50,
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          color: Colors.blue,
          onPressed: () {
            print("Clicked");
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.white),
          ),
        ),
      )),
    );
  }
}
