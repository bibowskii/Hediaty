import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hediaty/screens/home.dart';
import 'package:hediaty/screens/pledged_gifts.dart';
import 'package:hediaty/screens/ProfilePage.dart';
import 'package:hediaty/screens/FriendsPage.dart';
import 'package:hediaty/screens/EventListPage.dart';


class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key); // const constructor

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    PledgedGifts(),
    FriendsScreen(),
    EventListScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 35,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.gift),
            label: 'Pledged Gifts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Friends',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Event List',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Profile',
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
