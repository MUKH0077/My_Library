import 'package:flutter/material.dart';

class ListViewVerticalOwn extends StatefulWidget {
  static const String id = "ListViewVerticalOwn";
  const ListViewVerticalOwn({Key? key}) : super(key: key);

  @override
  State<ListViewVerticalOwn> createState() => _ListViewVerticalState();
}

class _ListViewVerticalState extends State<ListViewVerticalOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewVerticalOwn"),
      ),
      body: ListView(
        children: [
          _itemList(title: "JUMANJI", image: "assets/images/ic_images1.jpg"),
          _itemList(title: "HELICOPTER", image: "assets/images/ic_images2.jpg"),
          _itemList(title: "SERGIO", image: "assets/images/ic_images1.jpg"),
          _itemList(title: "BARCELONA", image: "assets/images/ic_images2.jpg"),
          _itemList(title: "CALIFORNIA", image: "assets/images/ic_images1.jpg"),
          _itemList(title: "JUMANJI", image: "assets/images/ic_images1.jpg"),
          _itemList(title: "HELICOPTER", image: "assets/images/ic_images2.jpg"),
          _itemList(title: "SERGIO", image: "assets/images/ic_images1.jpg"),
          _itemList(title: "BARCELONA", image: "assets/images/ic_images2.jpg"),
          _itemList(title: "CALIFORNIA", image: "assets/images/ic_images1.jpg"),
          _itemList(title: "JUMANJI", image: "assets/images/ic_images1.jpg"),
          _itemList(title: "HELICOPTER", image: "assets/images/ic_images2.jpg"),
          _itemList(title: "SERGIO", image: "assets/images/ic_images1.jpg"),
          _itemList(title: "BARCELONA", image: "assets/images/ic_images2.jpg"),
          _itemList(title: "CALIFORNIA", image: "assets/images/ic_images1.jpg"),
          _itemList(title: "JUMANJI", image: "assets/images/ic_images1.jpg"),
          _itemList(title: "HELICOPTER", image: "assets/images/ic_images2.jpg"),
          _itemList(title: "SERGIO", image: "assets/images/ic_images1.jpg"),
          _itemList(title: "BARCELONA", image: "assets/images/ic_images2.jpg"),
          _itemList(title: "CALIFORNIA", image: "assets/images/ic_images1.jpg"),
          _itemList(title: "JUMANJI", image: "assets/images/ic_images1.jpg"),
          _itemList(title: "HELICOPTER", image: "assets/images/ic_images2.jpg"),
          _itemList(title: "SERGIO", image: "assets/images/ic_images1.jpg"),
          _itemList(title: "BARCELONA", image: "assets/images/ic_images2.jpg"),
          _itemList(title: "CALIFORNIA", image: "assets/images/ic_images1.jpg"),
        ],
      ),
    );
  }

  Widget _itemList({title, image}) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Image(
            width: 70,
            height: 70,
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(title),
        ],
      ),
    );
  }
}
