import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home_Page.dart';

class Mainscreen extends StatefulWidget {
  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  // This widget
  int _currentIndex = 0;

  final tabs = [
    Home(),
    Center(
        child: Text(
          "Orders",
          style: TextStyle(fontSize: 20),
        )),
    Center(
        child: Text(
          "Vouchers",
          style: TextStyle(fontSize: 20),
        )),
    Center(
        child: Text(
          "Offers",
          style: TextStyle(fontSize: 20),
        )),
    Center(
        child: Text(
          "Profile",
          style: TextStyle(fontSize: 20),
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer), label: 'Vouchers'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Offers'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: tabs[_currentIndex],
    );
  }
}
