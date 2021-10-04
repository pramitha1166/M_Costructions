import 'package:flutter/material.dart';
import 'package:m_constructions/presentation/site_manager_dashboard/screens/delivery_logs.dart';
import 'package:m_constructions/presentation/site_manager_dashboard/screens/item_list.dart';
import 'package:m_constructions/presentation/site_manager_dashboard/screens/orders.dart';

class SMDashboard extends StatefulWidget {
  const SMDashboard({Key? key}) : super(key: key);

  @override
  _BasicBottomNavBarState createState() => _BasicBottomNavBarState();
}

class _BasicBottomNavBarState extends State<SMDashboard> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    ItemList(),
    Orders(),
    DeliveryLogs()
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
        title: const Text('BottomNavigationBar Demo'),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Item List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Delivery Logs',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
