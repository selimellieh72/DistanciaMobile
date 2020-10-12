import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:edulb/presentation/core/edit_widget.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final add;
  final edit;
  final delete;
  final setEditMode;
  final homeTarget;
  final cancelEditMode;

  CustomBottomNavigationBar({
    this.add,
    this.edit,
    this.delete,
    this.setEditMode,
    this.homeTarget,
    this.cancelEditMode,
  });
  @override
  Widget build(BuildContext context) {
    // final userData = context.bloc<AuthBloc>().state.getUserData();
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.09,
      width: double.infinity,
      color: Colors.white,
      child: Container(
        height: screenSize.height * 0.09,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(104, 104, 104, 1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: EditWidget(
          add: add,
          edit: edit,
          delete: delete,
          setEditMode: setEditMode,
          homeTarget: homeTarget,
          cancelEditMode: cancelEditMode,
        ),
      ),
    );
  }
}
