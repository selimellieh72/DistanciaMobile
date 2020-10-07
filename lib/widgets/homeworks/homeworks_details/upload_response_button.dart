import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class UploadResponseButton extends StatefulWidget {
  const UploadResponseButton();

  @override
  _UploadResponseButtonState createState() => _UploadResponseButtonState();
}

class _UploadResponseButtonState extends State<UploadResponseButton> {
  File _file;
  void _uploadFile() async {
    FilePickerResult result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        _file = File(result.files.single.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GradientButton(
          increaseWidthBy: 50,
          increaseHeightBy: 6,
          callback: _uploadFile,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(207, 94, 254, 1),
              Color.fromRGBO(8, 119, 204, 1),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: FittedBox(
                    child: Text(
                      _file == null
                          ? 'Upload'
                          : path.basename(_file.path).substring(0, 15),
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(fontSize: 20),
                    ),
                  ),
                ),
                Icon(MdiIcons.uploadOutline, color: Colors.white, size: 30)
              ],
            ),
          ),
        ),
        Spacer()
      ],
    );
  }
}
