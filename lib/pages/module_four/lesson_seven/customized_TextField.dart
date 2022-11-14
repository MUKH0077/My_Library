import 'package:flutter/material.dart';

class CustomizedTextFieldOwn extends StatefulWidget {
  static const String id = "CustomizedTextField";
  const CustomizedTextFieldOwn({Key? key}) : super(key: key);

  @override
  State<CustomizedTextFieldOwn> createState() => _CustomizedTextFieldOwnState();
}

class _CustomizedTextFieldOwnState extends State<CustomizedTextFieldOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("CustomizedTextFieldOwn")
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22.5)
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Phone",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.phone_iphone, color: Colors.purple,),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.5)
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Alarm",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.access_alarms_rounded, color: Colors.purple,),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.5)
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Contact",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.account_box_rounded, color: Colors.purple,),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
