import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as syspaths;

class ImageInput extends StatefulWidget {
  final Function onSelectedImage;

  ImageInput(this.onSelectedImage);

  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File _storedImage;

  Future<void> _takePicture() async {
    final imageFile =
        await ImagePicker().getImage(source: ImageSource.camera, maxWidth: 600);
    if (imageFile == null) return;

    setState(() {
      _storedImage = File(imageFile.path);
    });

    final appDir = await syspaths.getApplicationDocumentsDirectory();
    final fileName = path.basename(imageFile.path);
    final saveImage = await File(imageFile.path).copy('${appDir.path}/$fileName');
    widget.onSelectedImage(saveImage);
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
