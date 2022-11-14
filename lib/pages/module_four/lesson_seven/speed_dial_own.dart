import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SpeedDialOwn extends StatefulWidget {
  static const String id = "SpeedDialOwn";
  const SpeedDialOwn({Key? key}) : super(key: key);

  @override
  State<SpeedDialOwn> createState() => _SpeedDialOwnState();
}

class _SpeedDialOwnState extends State<SpeedDialOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SpeedDialOwn"),
      ),
      body: const Center(
      child: Text("Home"),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: const IconThemeData(size: 22.0),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print("Opened"),
        onClose: () => print("Closed"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: const CircleBorder(),
        children: [
          SpeedDialChild(
            child: const Icon(Icons.access_alarms_rounded),
            backgroundColor: Colors.redAccent,
            labelBackgroundColor: Colors.lightGreenAccent,
            label: "Alarm",
            labelStyle: const TextStyle(fontSize: 18),
            onTap: () => print ("First Clicked"),
          ),
          SpeedDialChild(
            child: const Icon(Icons.account_box_rounded),
            backgroundColor: Colors.redAccent,
            labelBackgroundColor: Colors.lightGreenAccent,
            label: "Email",
            labelStyle: const TextStyle(fontSize: 18),
            onTap: () => print ("First Clicked"),
          ),
          SpeedDialChild(
            child: const Icon(Icons.account_balance),
            backgroundColor: Colors.redAccent,
            labelBackgroundColor: Colors.lightGreenAccent,
            label: "Account",
            labelStyle: const TextStyle(fontSize: 18),
            onTap: () => print ("First Clicked"),
          ),
        ],
      ),
    );
  }
}
