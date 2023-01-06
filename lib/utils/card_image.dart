// ignore_for_file: sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: SizedBox(
          height: 100,
          width: 100,
          child: CupertinoContextMenu(
            child: ClipRRect(
              child: Opacity(
                opacity: 0.8,
                child: Image.network(
                  'https://lolstatic-a.akamaihd.net/frontpage/apps/prod/rg-champion-aatrox/tr_TR/5b922bef08881410f8fffa7273c30a75dfb1d11f/assets/img/share/share-1200x630.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            actions: [CupertinoContextMenuAction(child: Text('Like!'))],
          ),
        ));
  }
}
