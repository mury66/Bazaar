// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore
import 'package:flutter/material.dart';

import '../screens/craft_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
   List<Widget> pages = [
    const CraftScreen(),
    const Center(
      child: Text(
        'Chat Screen',
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
    ),
    const Center(
      child: Text(
        'Sell Screen',
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
    ),
    const Center(
      child: Text(
        'Cart Screen',
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
    ),
    const Center(
      child: Text(
        'Profile Screen',
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home_outlined,
                size: 23,
              ),
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Chat',
              icon: Icon(
                Icons.messenger_outline,
                size: 23,
              ),
              activeIcon: Icon(Icons.message_rounded)),
          BottomNavigationBarItem(
              label: 'Sell',
              icon: Icon(
                Icons.attach_money_rounded,
                size: 23,
              ),
              activeIcon: Icon(Icons.attach_money_rounded)),
          BottomNavigationBarItem(
              label: 'Cart',
              icon: Icon(
                Icons.local_grocery_store_outlined,
                size: 23,
              ),
              activeIcon: Icon(Icons.local_grocery_store)),
          BottomNavigationBarItem(
              label: 'Account',
              icon: Icon(
                Icons.account_circle_outlined,
                size: 23,
              ),
              activeIcon: Icon(Icons.account_circle_rounded)),
        ],
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        showSelectedLabels: true,
      ),
      body: pages.elementAt(currentIndex),
    );
  }
}
