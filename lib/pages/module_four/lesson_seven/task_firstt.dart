import 'package:flutter/material.dart';

class TaskFirstOwn extends StatefulWidget {
  static const String id = "TaskFirstOwn";
  const TaskFirstOwn({Key? key}) : super(key: key);

  @override
  State<TaskFirstOwn> createState() => _TaskFirstOwnState();
}

class _TaskFirstOwnState extends State<TaskFirstOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("TaskFirstOwn"),
      ),
      body: ListView(children: [
        itemView("assets/images/ic_images2.jpg", 'first'),
        itemView("assets/images/ic_images1.jpg", 'second'),
        itemView("assets/images/ic_images2.jpg", 'three'),
        itemView("assets/images/ic_images2.jpg", 'first'),
        itemView("assets/images/ic_images1.jpg", 'second'),
        itemView("assets/images/ic_images2.jpg", 'three'),
        itemView("assets/images/ic_images2.jpg", 'first'),
        itemView("assets/images/ic_images1.jpg", 'second'),
        itemView("assets/images/ic_images2.jpg", 'three'),
      ]),
    );
  }

  Widget itemView(String image, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 200,
      width: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
            ],
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
