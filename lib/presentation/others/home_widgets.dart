import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  final double height;
  final double width;
  final Color firstColor;
  final Color secondColor;
  final Icon icon;
  final Text text;
  final Function function;

  HomeWidget(this.firstColor, this.height, this.secondColor, this.width,
      this.icon, this.text, this.function);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              firstColor,
              secondColor,
            ],
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            text,
          ],
        ),
      ),
    );
  }
}
