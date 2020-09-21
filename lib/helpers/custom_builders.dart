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
          // decoration:  BoxDecoration(
          //     color: Colors.white,
          //     borderRadius:  BorderRadius.only(
          //         topLeft: const Radius.circular(10.0),
          //         topRight: const Radius.circular(10.0))),
          child: SingleChildScrollView(
            child: child,
          ),
        ),
      ),
    );
  }

  static Future<bool> showErrorDialog({
    BuildContext context,
    String title,
    String content,
  }) {
    return showDialog<bool>(
        context: context,
        child: AlertDialog(
          backgroundColor: Theme.of(context).errorColor,
          title: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
          content: Text(content),
          actions: [
            FlatButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text('I understand'),
            ),
          ],
        ));
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
