// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../utils/card_image.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  //image setter
  //Future setImage(Image image) async {}
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            pinned: true,
            backgroundColor: Colors.orange,
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'ismet Efe Balik',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              background: Image.network(
                'https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Jax_0.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverAppBar(
            primary: false,
            elevation: 8.0,
            pinned: true,
            backgroundColor: Colors.orange,
            title: Align(
              alignment: AlignmentDirectional.center,
              child: TabBar(
                indicatorColor: Colors.green,
                isScrollable: true,
                tabs: [Tab(text: 'Pictures'), Tab(text: 'About')],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 800,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TabBarView(
                  children: [
                    //1.tab
                    Wrap(
                        children: List.generate(10, (index) {
                      return ExploreGrid();
                    })),

                    //2.tab
                    Text('hi, i am a proffessional photographer')
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
