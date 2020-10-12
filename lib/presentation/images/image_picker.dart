import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart' as pk;

class ImagePicker extends StatefulWidget {
  ImagePicker(this.setImage);
  final void Function(File image) setImage;
  @override
  _ImagePickerState createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  File _image;

  void _takePicture() async {
    final _picker = pk.ImagePicker();
    final _isCamera = await showDialog(
      context: context,
      child: AlertDialog(
        title: Text('Choose image'),
        content: Text(
            'Do you want to take your image or choose one from the gallery?'),
        actions: [
          FlatButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text('Take image'),
          ),
          FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('Choose from gallery'),
          ),
        ],
      ),
    );
    if (_isCamera == null) {
      return;
    }
    final _chosenImage = await _picker.getImage(
      source: _isCamera ? pk.ImageSource.camera : pk.ImageSource.gallery,
      imageQuality: 50,
      maxWidth: 150,
    );
    if (_chosenImage == null) {
      return;
    }
    final _chosenImageFile = File(_chosenImage.path);
    widget.setImage(_chosenImageFile);
    setState(() {
      _image = _chosenImageFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton.icon(
            onPressed: _takePicture,
            icon: Icon(Icons.camera),
            label: Text('Choose profile image'),
          ),
          CircleAvatar(
            radius: 40,
            backgroundImage: _image == null ? null : FileImage(_image),
          ),
        ],
      ),
    );
  }
}
