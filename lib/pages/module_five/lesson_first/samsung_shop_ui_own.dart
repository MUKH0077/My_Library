import 'package:flutter/material.dart';

class SamsungShopUiOwn extends StatefulWidget {
  static const String id = "SamsungShopUiOwn";
  const SamsungShopUiOwn({Key? key}) : super(key: key);

  @override
  State<SamsungShopUiOwn> createState() => _SamsungShopUiOwnState();
}

class _SamsungShopUiOwnState extends State<SamsungShopUiOwn> {
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.black,
        title: const Text("SamsungShopUiOwn"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
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
                    image: AssetImage("assets/images/ic_images6.jpeg"),
                    fit: BoxFit.cover),
              ),
              child: Container(
                padding: const EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(.50),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Believe Me',
                      style: TextStyle(color: Colors.tealAccent, fontSize: 35),
                    ),
                    const SizedBox(
                      height: 105,
                    ),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
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
            ),
            SizedBox(
              height: 700,
              child: GridView.count(
                shrinkWrap: true,
                physics:const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
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
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Icon(Icons.star_border, color: Colors.redAccent,size: 30,),
          ],
        ),
      ),
    );
  }
}
