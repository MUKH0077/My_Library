import 'package:flutter/material.dart';

class TaskFirst extends StatefulWidget {
  static const String id = "TaskFirst";
  const TaskFirst({Key? key}) : super(key: key);

  @override
  State<TaskFirst> createState() => _TaskFirstState();
}

class _TaskFirstState extends State<TaskFirst> {
  PageController _pageController = PageController();
  int _selectedPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TaskFirst"),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        children: [
          Container(
            color: Colors.white,
            child: const Center(
              child: Text("Page Home"),
            ),
          ),
          Container(
            color: Colors.redAccent,
            child: const Center(
              child: Text("Page Message"),
            ),
          ),
          Container(
            color: Colors.deepOrange,
            child: const Center(
              child: Text("Page Video"),
            ),
          ),
          Container(
            color: Colors.deepPurpleAccent,
            child: const Center(
              child: Text("Page Notification"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.pinkAccent,
        fixedColor: Colors.blue,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.white),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.videocam), label: "Video"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_important), label: "Notification"),
        ],
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
            _pageController.animateToPage(index,
                duration: const Duration(microseconds: 200),
                curve: Curves.easeIn);
          });
        },
      ),
    );
  }
}
