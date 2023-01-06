import 'dart:math';

import 'package:flutter/material.dart';

class user_posts extends StatefulWidget {
  final String name;

  user_posts({required this.name});

  @override
  State<user_posts> createState() => _user_postsState();
}

class _user_postsState extends State<user_posts> {
  bool _isbuttonpressed = false;

  final imager = Image.network(
      'https://lolstatic-a.akamaihd.net/frontpage/apps/prod/rg-champion-aatrox/tr_TR/5b922bef08881410f8fffa7273c30a75dfb1d11f/assets/img/share/share-1200x630.jpg');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //pp
                  Transform(
                    transform: Matrix4.identity()..scale(1.3),
                    child: Chip(
                      elevation: 25,
                      backgroundColor: Colors.deepOrange[100],
                      label: Text(widget.name),
                      avatar: CircleAvatar(
                        backgroundImage: imager.image,
                        //radius: 22,
                      ),
                    ),
                  ),
                  /*SizedBox(
                    width: 10,
                  ),*/
                  //name
                  /*Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),*/
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),

        //post

        Card(
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            child: Image(
              image: imager.image,
            )),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              _isbuttonpressed ? Colors.green : Colors.blue),
                      onPressed: () {
                        setState(() {
                          _isbuttonpressed = !_isbuttonpressed;
                        });
                      },
                      child: Text('Like'))
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),

        //like

        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('liked by'),
              Text(
                ' abanke',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' liked by'),
              Text(
                ' others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        //caption
        Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8),
            child: RichText(
              text: TextSpan(style: TextStyle(color: Colors.black), children: [
                TextSpan(
                    text: widget.name,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' heloooooooooooooooooooooooo'),
              ]),
            )),
      ],
    );
  }
}
