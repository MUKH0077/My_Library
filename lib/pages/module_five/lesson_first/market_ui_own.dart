import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MarketUiOwn extends StatefulWidget {
  static const String id = "MarketUiOwn";
  const MarketUiOwn({Key? key}) : super(key: key);

  @override
  State<MarketUiOwn> createState() => _MarketUiOwnState();
}

class _MarketUiOwnState extends State<MarketUiOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.lightBlueAccent.shade400,
        title: Text(
          "Clothes Mlothes",
          style: TextStyle(
              color: Colors.orange,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, "All"),
                    singleTab(false, "Shoes"),
                    singleTab(false, "Sport"),
                    singleTab(false, "Shirts"),
                    singleTab(false, "Trousers"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              makeItem("assets/images/market_clothes/ic_imaj01.jpeg"),
              makeItem("assets/images/market_clothes/ic_imaj02.jpeg"),
              makeItem("assets/images/market_clothes/ic_imaj03.jpeg"),
              makeItem("assets/images/market_clothes/ic_imaj04.jpg"),
              makeItem("assets/images/market_clothes/ic_imaj05.jpg"),
              makeItem("assets/images/market_clothes/ic_imaj07.jpg"),
              makeItem("assets/images/market_clothes/ic_imaj08.jpg"),
              makeItem("assets/images/market_clothes/ic_imaj09.jpg"),
              makeItem("assets/images/market_clothes/ic_imaj10.jpg"),
              makeItem("assets/images/market_clothes/ic_imaj11.jpg"),
              makeItem("assets/images/market_clothes/ic_imaj12.jpg"),
              makeItem("assets/images/market_clothes/ic_imaj13.jpeg"),
              makeItem("assets/images/market_clothes/ic_imaj14.jpg"),
              makeItem("assets/images/market_clothes/ic_imaj15.jpg"),

            ],
          ),
        ),
      ),
    );
  }

  Widget singleTab(bool type, String text) {
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type ? Colors.grey.shade400 : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: type ? 20 : 17),
          ),
        ),
      ),
    );
  }

  Widget makeItem(String image) {
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 10,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sport Clothes",style: TextStyle(color: Colors.lightGreen,fontSize: 25,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("Sneakers",style: TextStyle(color: Colors.lightGreen,fontSize: 19,fontWeight: FontWeight.bold),),

                      ],),),
                Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                    ),
                  child: const Center(
                    child: Icon(Icons.favorite_border,size: 20,),
                  ),
                  ),
              ],
            ),
            Text("100\$",style: TextStyle(color: Colors.white,fontSize: 25),),
          ],
        ),
      ),
    );
  }
}
