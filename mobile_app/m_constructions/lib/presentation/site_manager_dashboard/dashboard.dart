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

  static const List<String> _title = <String>[
    'Item List - SM',
    'Orders',
    'Deliver logs - SM'
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
        title: Text(
          _title[_selectedIndex],
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey[100],
        leading: null,
        automaticallyImplyLeading: false,
      ),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        fixedColor: Colors.brown,
        unselectedItemColor: Colors.brown,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_rounded),
            label: 'Item List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Orders',
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
