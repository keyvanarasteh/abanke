import 'package:flutter/material.dart';

class user_posts extends StatelessWidget {
  final String name;

  user_posts({required this.name});

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
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  //name
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),
        //post
        Container(
          height: 400,
          color: Colors.grey[300],
        ),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
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
                'abanke',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('liked by'),
              Text(
                'others',
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
                    text: name, style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'heloooooooooooooooooooooooo'),
              ]),
            )),
      ],
    );
  }
}
