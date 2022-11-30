import 'package:flutter/material.dart';

class HotelUiOwn extends StatefulWidget {
  static const String id = "HotelUiOwn";
  const HotelUiOwn({Key? key}) : super(key: key);

  @override
  State<HotelUiOwn> createState() => _HotelUiOwnState();
}

class _HotelUiOwnState extends State<HotelUiOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/hotel/ic_header.jpg"),
                  fit: BoxFit.cover
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.4),

                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("What kind of hotel you need?",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    const SizedBox(height: 30,),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search,color: Colors.grey,),
                          hintText: "Search for hotels...",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 18),
                        ),
                      ),
                    ),

                    const SizedBox(height: 50,),

                  ],
                ),
              ),
            ),
            //body:
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Best Hotels",style: TextStyle(color: Colors.grey.shade800,fontSize: 20,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 30,),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/hotel/ic_hotel1.jpg", title: "Kempinsky Hotel"),
                    makeItem(image: "assets/images/hotel/ic_hotel2.jpg", title: "Armani Exchange"),
                      makeItem(image: "assets/images/hotel/ic_hotel3.jpg", title: "Burj Khalifa"),
                    makeItem(image: "assets/images/hotel/ic_hotel4.jpg", title: "City Palace"),
                      makeItem(image: "assets/images/hotel/ic_hotel5.webp", title: "Grand Capital"),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30,),

                  Text("Luxury Hotels",style: TextStyle(color: Colors.grey.shade800,fontSize: 20,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 30,),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: "assets/images/hotel/ic_hotel1.jpg", title: "Kempinsky Hotel"),
                        makeItem(image: "assets/images/hotel/ic_hotel2.jpg", title: "Armani Exchange"),
                        makeItem(image: "assets/images/hotel/ic_hotel3.jpg", title: "Burj Khalifa"),
                        makeItem(image: "assets/images/hotel/ic_hotel4.jpg", title: "City Palace"),
                        makeItem(image: "assets/images/hotel/ic_hotel5.webp", title: "Grand Capital"),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget makeItem({image , title }){
    return AspectRatio(
        aspectRatio: 1.4 / 1,
    child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        )
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(title,style: const TextStyle(color: Colors.white,fontSize: 20),),
        ),
      ),
    ),
    );


  }
}
