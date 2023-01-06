import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class Videos extends StatefulWidget {
  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imagetmp = File(image.path);
      setState(() {
        this.image = imagetmp;
      });
    } on PlatformException catch (e) {
      print('fail: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        image != null ? Image.file(image!) : FlutterLogo(),
        CupertinoButton(
            child: Text('foto yukle'),
            onPressed: () {
              showCupertinoModalPopup(context: context, builder: buildsheet);
            })
      ]),
    );
  }

  Widget buildsheet(BuildContext context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            child: Text('galeri'),
            onPressed: () => pickImage(),
            isDefaultAction: true,
          )
        ],
        cancelButton: CupertinoActionSheetAction(
          child: Text('Cancel'),
          onPressed: () => Navigator.pop(context),
        ),
      );
}
