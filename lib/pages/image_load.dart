import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

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

      final imageperma = await saveImagePermanently(image.path);
      setState(() {
        this.image = imageperma;
      });
    } on PlatformException catch (e) {
      print('fail: $e');
    }
  }

  Future<File> saveImagePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }

  Future<String> getData() async {
    await Future.delayed(const Duration(seconds: 1));
    return 'loaded';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator.adaptive();
          }
          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else {
            return Column(mainAxisSize: MainAxisSize.min, children: [
              CupertinoButton(
                  color: Colors.green,
                  child: Text('foto yukle'),
                  onPressed: () {
                    showCupertinoModalPopup(
                        context: context, builder: buildsheet);
                  }),
              SizedBox(
                height: 20,
              ),
              Flexible(
                  child: image != null
                      ? Image.file(image!)
                      : Icon(Icons.add_a_photo_rounded)),
            ]);
          }
        },
      )),
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
