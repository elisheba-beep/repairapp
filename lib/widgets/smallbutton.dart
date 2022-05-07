import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final String title;
  final Color color;
  final double elevation;
  final Color textColor;
  const SmallButton(
      {Key? key,
      required this.title,
      required this.color,
      required this.elevation,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // <-- Radius
        ),
      ),
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
