import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  final String text;

  Bubble({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(text),
        ],
      ),
    );
  }
}
