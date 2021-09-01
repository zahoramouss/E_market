import 'package:emarket/screen/cart.dart';
import 'package:emarket/screen/faverites.dart';
import 'package:emarket/screen/homepage.dart';
import 'package:emarket/screen/nofiction.dart';
import 'package:emarket/screen/profile2.dart';
import 'package:flutter/material.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class BottomNavBar extends StatefulWidget with NavigationStates {
  @override
  State<StatefulWidget> createState() {
    return BottomNavBarState();
  }
}

class BottomNavBarState extends State {
  int _selectedIndex = 4;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    prof(), //profile
    Favorits(), //favorites
    Notifications(),
    Cart(), //cart
    Homepage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? ImageIcon(AssetImage('images/profile2.png'))
                : ImageIcon(AssetImage('images/profile.png')),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? ImageIcon(AssetImage('images/heart2.png'))
                : ImageIcon(AssetImage('images/heart1.png')),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? ImageIcon(AssetImage('images/bell2.png'))
                : ImageIcon(AssetImage('images/bell.png')),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? ImageIcon(AssetImage('images/cart-active.png'))
                : ImageIcon(AssetImage('images/cart3.png')),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 4
                ? ImageIcon(AssetImage('images/home-active.png'))
                : ImageIcon(AssetImage('images/home.png')),
            label: 'Home',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff70a9ff),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        unselectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontFamily: 'stc'),
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontFamily: 'stc'),
        selectedFontSize: 12.0,
        iconSize: 20.0,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
