import 'package:flutter/material.dart';

class CustomBuilders {
  static void showResponsiveBottomSheet({
    @required BuildContext context,
    @required Widget child,
  }) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (_) => Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          child: SingleChildScrollView(
            child: child,
          ),
        ),
      ),
    );
  }

  static void showErrorSnackBar(BuildContext context) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('An error occured. Please try again later.'),
        backgroundColor: Theme.of(context).errorColor,
      ),
    );
  }
}
