import 'package:flutter/material.dart';
import 'package:m_constructions/presentation/dashboard/screens/add_item.dart';
import 'package:m_constructions/presentation/dashboard/screens/check_delivery.dart';
import 'package:m_constructions/presentation/dashboard/screens/delivery_logs.dart';
import 'package:m_constructions/presentation/dashboard/screens/item_list.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _BasicBottomNavBarState createState() => _BasicBottomNavBarState();
}

class _BasicBottomNavBarState extends State<Dashboard> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    CheckDelivery(),
    AddItem(),
    ItemList(),
    DeliveryLogs(),
  ];

  static const List<String> _names = <String>[
    'Check Availability',
    'Add Item',
    'Item List',
    'Delivery Logs',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_names[_selectedIndex]),
        centerTitle: true,
        elevation: 0,
        leading: null,
      ),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        fixedColor: Colors.brown,
        unselectedItemColor: Colors.brown,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_rounded),
            label: 'Check Invontory',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Add Item',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Item List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.today_outlined),
            label: 'Delivery Logs',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
