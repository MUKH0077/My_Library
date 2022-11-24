import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskSecondInFive extends StatefulWidget {
  static const String id ="TaskSecondInFive";
  const TaskSecondInFive({Key? key}) : super(key: key);

  @override
  State<TaskSecondInFive> createState() => _TaskSecondInFiveState();
}

class _TaskSecondInFiveState extends State<TaskSecondInFive> {

  final List<String> _listItem = [
    'assets/images/ic_images7.jpg',
    'assets/images/ic_images8.jpg',
    'assets/images/ic_images9.jpg',
    'assets/images/ic_images10.jpg',
    'assets/images/ic_images11.jpg',
    'assets/images/ic_images12.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: const Icon(Icons.menu),
        title: const Text("TaskSecondInFive"),
        actions: [
          Padding(
              padding: const EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text("@"),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                image: const DecorationImage(
                    image: AssetImage("assets/images/ic_images13.jpeg"),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Lifestyle sale",style: TextStyle(color: Colors.white,fontSize: 35),),
                  const SizedBox(height: 30),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text(
                        "Shop Now",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: GridView.count(
                  shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children:
                  _listItem.map((item) => cellOfList(item)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget cellOfList(String item) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        alignment: Alignment.topRight,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child: Icon(Icons.favorite, color: Colors.red,size: 30,),
      ),
    );
  }
}
