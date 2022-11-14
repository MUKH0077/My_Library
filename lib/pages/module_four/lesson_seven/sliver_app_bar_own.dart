import 'package:flutter/material.dart';

class SliverAppBarOwn extends StatefulWidget {
  static const String id = "SliverAppBarOwn";
  const SliverAppBarOwn({Key? key}) : super(key: key);

  @override
  State<SliverAppBarOwn> createState() => _SliverAppBarOwnState();
}

class _SliverAppBarOwnState extends State<SliverAppBarOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            expandedHeight: 220,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 50,
            backgroundColor: Colors.blueAccent,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("SliverAppBarOwn"),
              background: Image(
                image: AssetImage("assets/images/ic_images2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(_buildList(80)),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildList(int count) {
    List<Widget> items = [];

    for (int i = 0; i < count; i++) {
      items.add(_itemList(i));
    }
    return items;
  }

  Widget _itemList(int i) {
    return SizedBox(
      height: 40,
      child: Center(
        child: Text("Item ${i.toString()}")));
  }
}
