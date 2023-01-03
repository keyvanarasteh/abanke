// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    Center(child: Text('HOME')),
    Center(child: Text('SEARCH')),
    Center(child: Text('VIDEOS')),
    Center(child: Text('SHOP')),
    Center(child: Text('ACCOUNT')),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'videos'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
      ),
    );
  }
}
