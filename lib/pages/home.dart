// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spotiapp/utils/later/bubble_stories.dart';
import 'package:spotiapp/utils/user_post.dart';

class UserHome extends StatelessWidget {
  final List people = ['efe', 'bugra', 'ali', 'ece', 'polat'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // ignore: prefer_const_literals_to_create_immutables
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'fakegram',
            style: TextStyle(color: Colors.black),
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              /*Icon(Icons.add),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(Icons.favorite),
              ),
              Icon(Icons.share),*/
            ],
          ),
        ]),
      ),
      body: Column(
        children: [
          /*Container(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return Bubble(text: people[index]);
                  })),*/
          //posts

          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return user_posts(name: people[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
