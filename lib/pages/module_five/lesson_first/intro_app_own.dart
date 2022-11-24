import 'package:flutter/material.dart';
import 'package:my_library/pages/module_five/lesson_first/homepagenewintro.dart';

import '../../../utils/Stings.dart';

class IntroAppOwn extends StatefulWidget {
  static const String id = "IntroAppOwn";
  const IntroAppOwn({Key? key}) : super(key: key);

  @override
  State<IntroAppOwn> createState() => _IntroAppOwnState();
}

class _IntroAppOwnState extends State<IntroAppOwn> {
  PageController? _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: [
              makePage(
                image: "assets/images/ic_images10.jpg",
                title: Strings.stepOneTitle,
                content: Strings.stepOneContent,
              ),
              makePage(
                image: "assets/images/ic_images11.jpg",
                title: Strings.stepTwoTitle,
                content: Strings.stepTwoContent,
              ),
              makePage(
                image: "assets/images/ic_images13.jpeg",
                title: Strings.stepThreeTitle,
                content: Strings.stepThreeContent,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildIndicator(),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text("IntroAppOwn"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, HomePageNewIntro.id);
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.greenAccent, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget makePage({image, title, content}) {
    return Container(
      padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(image),
              ),
              Text(
                title,
                style: const TextStyle(color: Colors.green, fontSize: 30),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                content,
                style: const TextStyle(color: Colors.tealAccent, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 50 : 6,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];

    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}
