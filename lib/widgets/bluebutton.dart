import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final String title;
  final Color color;
  final Function() onPressed;
  const BlueButton(
      {Key? key,
      required this.title,
      required this.color,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          shadowColor: color,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // <-- Radius
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
