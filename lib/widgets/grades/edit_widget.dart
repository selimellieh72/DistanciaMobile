import 'package:edulb/domain/app_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditWidget extends StatelessWidget {
  FlatButton _buildCustomFlatButton(
      String text, Function onPressed, bool isDisabled) {
    return FlatButton(
      child: Text(
        text,
        style: TextStyle(
            color: isDisabled ? Colors.grey : Color.fromRGBO(0, 113, 227, 1),
            fontSize: 15,
            fontWeight: FontWeight.w400),
      ),
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    final appInfo = Provider.of<AppInfo>(context);

    return Container(
      child: Row(
        children: [
          if (appInfo.isEditting)
            _buildCustomFlatButton(
                'Delete',
                appInfo.selectedGradesIds.length == 0
                    ? null
                    : () => appInfo.deleteGrades(),
                appInfo.selectedGradesIds.length == 0 ? true : false),
          _buildCustomFlatButton(appInfo.isEditting ? 'Cancel' : 'Edit',
              appInfo.setIsEditting, false)
        ],
      ),
    );
  }
}
