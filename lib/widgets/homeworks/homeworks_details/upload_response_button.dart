import 'dart:io';

import 'package:edulb/application/homeworks/submit_homework/submit_homework_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart' as path;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class UploadResponseButton extends StatefulWidget {
  final bool isSubmitted;
  const UploadResponseButton(this.isSubmitted);

  @override
  _UploadResponseButtonState createState() => _UploadResponseButtonState();
}

class _UploadResponseButtonState extends State<UploadResponseButton> {
  void _uploadFile() async {
    FilePickerResult result = await FilePicker.platform.pickFiles();

    final _file = File(result.files.single.path);
    context
        .bloc<SubmitHomeworkBloc>()
        .add(SubmitHomeworkEvent.homeworkToSubmitAdded(_file));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubmitHomeworkBloc, SubmitHomeworkState>(
      builder: (_, state) => Row(
        children: [
          GradientButton(
            increaseWidthBy: 50,
            increaseHeightBy: 6,
            callback: widget.isSubmitted ||
                    state == SubmitHomeworkState.successSubmit()
                ? null
                : _uploadFile,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: widget.isSubmitted ||
                      state == SubmitHomeworkState.successSubmit()
                  ? [
                      Colors.grey,
                      Colors.black,
                    ]
                  : [
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
                      child: state.maybeMap(
                        toSubmitHomework: (state) {
                          final _fileName = path.basename(state.homework.path);
                          return Text(
                            _fileName.length <= 15
                                ? _fileName
                                : _fileName.substring(0, 14),
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 20),
                          );
                        },
                        submittingHomework: (s) => CircularProgressIndicator(),
                        orElse: () => Text(
                          'Upload',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(fontSize: 20),
                        ),
                      ),
                      // ? 'Upload'
                      // : path.basename(_file.path).substring(0, 15),
                    ),
                  ),
                  Icon(MdiIcons.uploadOutline, color: Colors.white, size: 30)
                ],
              ),
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}
