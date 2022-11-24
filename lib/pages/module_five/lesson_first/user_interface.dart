import 'package:flutter/material.dart';

class UserInterfaceOwn extends StatefulWidget {
  static const String id = "UserInterfaceOwn";
  const UserInterfaceOwn({Key? key}) : super(key: key);

  @override
  State<UserInterfaceOwn> createState() => _UserInterfaceOwnState();
}

class _UserInterfaceOwnState extends State<UserInterfaceOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserInterfaceOwn"),
      ),
    );
  }
}
