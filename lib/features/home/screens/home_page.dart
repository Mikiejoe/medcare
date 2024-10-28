import 'package:flutter/material.dart';
import 'package:medcare/features/home/screens/home_screen.dart';
import 'package:medcare/features/home/screens/mylist_screen.dart';
import 'package:medcare/features/home/screens/order_screen.dart';
import 'package:medcare/features/home/screens/profile_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selected = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const OrderScreen(),
    const MylistScreen(),
    const ProfileScreen(),
  ];

  void tabChange(int value) {
    setState(() {
      _selected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pages[_selected],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedItemColor: Colors.deepOrange,
        currentIndex: _selected,
        unselectedItemColor: Colors.grey.shade400,
        onTap: tabChange,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_outlined),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            label: "My List",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
