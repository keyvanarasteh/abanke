// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool? valuecheck = false;
  bool value1 = true;

  double _currentvalue = 0;

  final _dropitems = ['yellow', 'blue', 'red', 'orange', 'grey'];
  String Dropval = 'red';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Data paylasimi'),
                  Switch(
                      activeColor: Colors.green,
                      value: value1,
                      onChanged: (bool state) {
                        setState(() {
                          value1 = state;
                        });
                      }),
                ],
              )
            ],
          ),
          Column(
            children: [
              Text('menu icin renk secimi yap: '),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: DropdownButtonFormField(
                  onChanged: (valueC) {
                    setState(() {
                      Dropval = valueC!;
                    });
                  },
                  value: Dropval,
                  items: _dropitems.map((e) {
                    return DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          Column(
            children: [
              CheckboxListTile(
                  activeColor: Colors.green,
                  title: Text('Sesler'),
                  value: valuecheck,
                  onChanged: (newstate) {
                    setState(() {
                      valuecheck = newstate;
                    });
                  }),
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
          )
        ],
      ),
    );
  }
}
