import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  final _dropitems = ['sari', 'yeşil', 'mavi', 'kirmizi', 'turuncu'];
  String Dropval = 'renksec';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButton<String>(
        onChanged: null,
        value: Dropval,
        items: _dropitems
            .map((e) => DropdownMenuItem(
                  child: Text(e),
                  value: e,
                ))
            .toList(),
      ),
    );
  }
}
