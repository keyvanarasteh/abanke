// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  double _currentvalue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            _currentvalue.toInt().toString(),
            style: TextStyle(fontSize: 30),
          ),
          Slider(
              value: _currentvalue,
              min: 0,
              max: 100,
              divisions: 20,
              label: _currentvalue.toString(),
              activeColor: Colors.green,
              inactiveColor: Colors.grey,
              onChanged: (value) {
                setState(() {
                  _currentvalue = value;
                });
              })
        ],
      ),
    );
  }
}
