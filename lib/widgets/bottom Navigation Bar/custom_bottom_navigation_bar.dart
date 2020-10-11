import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:edulb/widgets/grades/edit_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:edulb/widgets/core/user_bloc_get_user_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final add;

  CustomBottomNavigationBar({
    this.add,
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
        child: EditWidget(add: add),
      ),
    );
  }
}
