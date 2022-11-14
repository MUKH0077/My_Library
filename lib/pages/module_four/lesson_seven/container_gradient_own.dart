import 'package:flutter/material.dart';

class ContainerGradientOwn extends StatefulWidget {
  static const String id = "ConatainerGradient";
  const ContainerGradientOwn({Key? key}) : super(key: key);

  @override
  State<ContainerGradientOwn> createState() => _ContainerGradientOwnState();
}

class _ContainerGradientOwnState extends State<ContainerGradientOwn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("ContainerGradientOwn"),
      ),
      body: Center(
        child: Container(
            height: 200,
            width: 200,
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                    image: AssetImage("assets/images/ic_images2.jpg"),
                    fit: BoxFit.cover
                )
            ),

            child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.2),
              ]
              )
            ),
        ),
        ),
      ),
    );
  }
}
