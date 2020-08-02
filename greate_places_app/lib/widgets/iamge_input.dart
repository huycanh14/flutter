import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File _storedImage;

  Future<void> _takePicture() async {
    final imageFile = await ImagePicker().getImage(
      source: ImageSource.camera, 
      maxWidth: 600
    );

    setState(() {
      _storedImage = File(imageFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Colors.grey)),
            child: _storedImage != null
                ? Image.file(_storedImage,
                    fit: BoxFit.cover, width: double.infinity)
                : Text('No Image Taken', textAlign: TextAlign.center),
            alignment: Alignment.center),
        Expanded(
            child: FlatButton.icon(
                onPressed: _takePicture,
                icon: Icon(Icons.camera),
                label: Text('Tale Picture'),
                textColor: Theme.of(context).primaryColor))
      ],
    );
  }
}
