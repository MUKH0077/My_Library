import 'package:flutter/material.dart';

class GridViewOwn extends StatefulWidget {
  static const String id = "GridView";
  const GridViewOwn({Key? key}) : super(key: key);

  @override
  State<GridViewOwn> createState() => _GridViewOwnState();
}

class _GridViewOwnState extends State<GridViewOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
      ),

      body: GridView.count(
          crossAxisCount: 2,
      children: [
        _itemList(title: "Item One", images: "assets/images/ic_images1.jpg"),
      _itemList(title: "Item One", images: "assets/images/ic_images2.jpg"),
      _itemList(title: "Item One", images: "assets/images/ic_images1.jpg"),
      _itemList(title: "Item One", images: "assets/images/ic_images2.jpg"),
      _itemList(title: "Item One", images: "assets/images/ic_images1.jpg"),
      _itemList(title: "Item One", images: "assets/images/ic_images2.jpg"),
        ],
      )
    );
  }
  Widget _itemList({title, images}) {
    return Container(
      color: Colors.pink,
      margin: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: 100,
            height: 100,
            fit: BoxFit.cover,
            image: AssetImage(images),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(title),
        ],
      ),
    );
  }
}
