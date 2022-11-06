import 'package:flutter/material.dart';

class ListViewHorizontalOwn extends StatefulWidget {
  static const String id = "ListViewHorizontal";
  const ListViewHorizontalOwn({Key? key}) : super(key: key);

  @override
  State<ListViewHorizontalOwn> createState() => _ListViewHorizontalOwnState();
}

class _ListViewHorizontalOwnState extends State<ListViewHorizontalOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewHorizontalOwn"),
      ),
      body: SizedBox(
        height: 210,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _itemList(title: "Item One", image: "assets/images/ic_images1.jpg"),
            _itemList(title: "Item Two", image: "assets/images/ic_images2.jpg"),
            _itemList(title: "SERGIO", image: "assets/images/ic_images1.jpg"),
            _itemList(title: "Item ", image: "assets/images/ic_images2.jpg"),
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
      )
    );
  }

  Widget _itemList({title, image}) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.grey,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Image(
              width: 70,
              height: 70,
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(title),
        ],
      ),
    );
  }
}
