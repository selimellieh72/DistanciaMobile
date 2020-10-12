import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class CreateButton extends StatelessWidget {
  final Function onPressed;
  final bool isLoading;

  CreateButton({
    @required this.onPressed,
    @required this.isLoading,
  });
  @override
  Widget build(BuildContext context) {
    return GradientButton(
      increaseHeightBy: 8,
      increaseWidthBy: 15,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.fromRGBO(98, 231, 254, 1),
          Color.fromRGBO(8, 119, 204, 1)
        ],
      ),
      callback: onPressed,
      child: isLoading
          ? CircularProgressIndicator()
          : Text(
              'Create!',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(color: Colors.white),
            ),
    );
  }
}
