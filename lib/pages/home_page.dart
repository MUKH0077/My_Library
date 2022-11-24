import 'package:flutter/material.dart';
import 'package:my_library/pages/module_four/module_four_page.dart';

import 'module_five/modul_five_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "HomePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width,),
          MaterialButton(
            color: Colors.amber,
            onPressed: () {
              Navigator.pushNamed(context, ModuleFourPage.id);
            },
            child: const Text("ModuleFourPage")
          ),
          MaterialButton(
            color: Colors.amber,
            onPressed: () {
              Navigator.pushNamed(context, ModuleFivePage.id);
            },
            child: const Text ("ModuleFivePage"),
          ),
        ],

      ),
    );
  }
}
