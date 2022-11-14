import 'package:flutter/material.dart';

class BottomNavigationBarOwn extends StatefulWidget {
  static const String id = "BottomNavigationBarOwn";
  const BottomNavigationBarOwn({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarOwn> createState() => _BottomNavigationBarOwnState();
}

class _BottomNavigationBarOwnState extends State<BottomNavigationBarOwn> {

   PageController _pageController = PageController();
  int _selectedPage =0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomNavigationBarOwn"),
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
            color: Colors.teal,
            child: const Center(
              child: Text("Page Home"),
            ),
          ),
          Container(
            color: Colors.tealAccent,
            child: const Center(
              child: Text("Page Business"),
            ),
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items:  const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.business),label: "Business"),
        ],
        currentIndex: _selectedPage,
        selectedItemColor: Colors.black,
        onTap: (int index){
          setState(() {
            _selectedPage = index;
            _pageController.animateToPage(index, duration: Duration(microseconds: 200), curve: Curves.easeIn);
          });
        },
      ),
    );
  }
}
