import 'package:flutter/material.dart';

import 'pages/home/home.dart';
import 'pages/connect/connect.dart';
import 'pages/training/training.dart';
import 'pages/explore/events.dart';
import 'pages/explore/explore.dart';
import 'pages/profile/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    Home(),
    Connect(),
    Training(),
    Explore(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VOLT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.red,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.home,
                color: Colors.red,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.business,
                color: Colors.red,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.run_circle,
                color: Colors.red,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.explore,
                color: Colors.red,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.person,
                color: Colors.red,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
