import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TaskMarketUiOwn extends StatefulWidget {
  static const String id = "TaskMarketUiOwn";
  const TaskMarketUiOwn({Key? key}) : super(key: key);

  @override
  State<TaskMarketUiOwn> createState() => _TaskMarketUiOwnState();
}

class _TaskMarketUiOwnState extends State<TaskMarketUiOwn> {
  List<Car> cars = [
    Car(true, "assets/images/cars/ic_imag01.jpg"),
    Car(false, "assets/images/cars/ic_imag02.jpg"),
    Car(false, "assets/images/cars/ic_imag03.jpg"),
    Car(true, "assets/images/cars/ic_imag04.jpg"),
    Car(true, "assets/images/cars/ic_imag05.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Cars",
          style: TextStyle(
              color: Colors.red, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, "All"),
                    singleTab(false, "Red"),
                    singleTab(false, "Blue"),
                    singleTab(false, "Green"),
                    singleTab(false, "Yellow"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: cars.length,
                itemBuilder: (context, index) {
                  return makeItem(cars[index]);
                },
              ),
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
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type ? Colors.red.shade400 : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: type ? 20 : 17,
                color: type ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }

  Widget makeItem(Car car) {
    return Container(
      height: 250,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.only(left: 10, top: 15, bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(car.image), fit: BoxFit.cover),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "PDP Car",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "Electric",
                style: TextStyle(color: Colors.red, fontSize: 25),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "100\$",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: car.isSelected ? Colors.white : Colors.red),
            child: IconButton(
              onPressed: () {
                setState(() {
                  car.isSelected = !car.isSelected;
                });
              },
              icon: !car.isSelected
                  ? const Icon(
                      Icons.favorite_border,
                      size: 20,
                      color: Colors.white,
                    )
                  : const Icon(
                      Icons.favorite,
                      size: 20,
                      color: Colors.red,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

class Car {
  String image;
  bool isSelected;
  Car(this.isSelected, this.image);
}
