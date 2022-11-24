import 'package:flutter/material.dart';

import '../../../utils/Stings.dart';
import 'home_intro_newpage.dart';

class TaskIntroOwn extends StatefulWidget {
  static const String id = "TaskIntroOwn";
  const TaskIntroOwn({Key? key}) : super(key: key);

  @override
  State<TaskIntroOwn> createState() => _TaskIntroOwnState();
}

class _TaskIntroOwnState extends State<TaskIntroOwn> {
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
      backgroundColor: Colors.white,
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
                content: Strings.stepOneContent,
                title: Strings.stepOneTitle,
                image: "assets/images/ic_image_1.png",
              ),
              makePage(
                content: Strings.stepTwoContent,
                title: Strings.stepTwoTitle,
                image: "assets/images/ic_image_2.png",
              ),
              makePage(
                content: Strings.stepThreeContent,
                title: Strings.stepThreeTitle,
                image: "assets/images/ic_image_3.png",
              ),
            ],
          ),
          Container(
            height: 30,
            margin: const EdgeInsets.only(bottom: 60),
            child: Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildIndicator(),
                ),
                currentIndex == 2
                    ? Positioned(
                        right: 30,
                        bottom: 0,
                        top: 0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, HomeIntroNewpage.id);
                          },
                          child: const Text(
                            "Skip",
                            style: TextStyle(color: Colors.green, fontSize: 17),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget makePage({content, title, image}) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(image),
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
