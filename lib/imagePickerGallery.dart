// ignore: file_names
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:soiltesting/mainScreenButton.dart';

enum ImageSourceType { gallery, camera }

// ignore: use_key_in_widget_constructors
class ImagePickerGallery extends StatelessWidget {
  void _handleURLButtonPress(BuildContext context, var type) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ImageFromGalleryEx(type)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Gallery Image Picker"),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: GestureDetector(
                  child: const CategoryCard(
                    buttonIcon: Icon(
                      Icons.image,
                      size: 40,
                    ),
                    title: 'Get Image From Gallery',
                  ),
                  onTap: () {
                    _handleURLButtonPress(context, ImageSourceType.gallery);
                  },
                ),
              ),
            ],
          ),
        ));
  }
}

class ImageFromGalleryEx extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final type;
  ImageFromGalleryEx(this.type);

  @override
  ImageFromGalleryExState createState() => ImageFromGalleryExState(this.type);
}

class ImageFromGalleryExState extends State<ImageFromGalleryEx> {
  var _image;
  var imagePicker;
  var type;

  ImageFromGalleryExState(this.type);

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    imagePicker = new ImagePicker();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Image from Gallery"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          Center(
            child: GestureDetector(
              onTap: () async {
                var source = ImageSource.gallery;
                XFile image = await imagePicker.pickImage(
                  source: source,
                  imageQuality: 100,
                );
                setState(() {
                  _image = File(image.path);
                });
              },
              child: Container(
                child: _image != null
                    ? Image.file(
                        _image,
                        fit: BoxFit.fitHeight,
                      )
                    : Container(
                        decoration: BoxDecoration(
                          color: Colors.green[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 200,
                        height: 200,
                        child: Icon(
                          Icons.image,
                          size: 75,
                          color: Colors.grey[800],
                        ),
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
