import 'package:flutter/material.dart';

class NavigationRailOwn extends StatefulWidget {
  static const String id = "NavigationRailOwn";
  const NavigationRailOwn({Key? key}) : super(key: key);

  @override
  State<NavigationRailOwn> createState() => _NavigationRailOwnState();
}

class _NavigationRailOwnState extends State<NavigationRailOwn> {
  int _selectedIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("NavigationRailOwn", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Colors.grey,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;

              });
            },
            labelType: NavigationRailLabelType.selected,
            destinations:  const [
              NavigationRailDestination(
                icon: Icon(Icons.access_alarm),
                selectedIcon: Icon(Icons.access_alarm),
                label: Text("Alarm", style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.access_time_filled_rounded, color: Colors.black,),
                selectedIcon: Icon(Icons.access_time_filled_rounded),
                label: Text("Time"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.account_balance_wallet),
                selectedIcon: Icon(Icons.account_balance_wallet),
                label: Text("Wallet"),
              )
            ],
          ),

          const VerticalDivider(thickness: 1, width: 1,),
          Expanded(
              child: Center(
            child: Text("Selected Index: $_selectedIndex"),
          ),
          ),
        ],
      ),
    );
  }
}
