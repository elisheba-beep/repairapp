import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final Color backgroundcolor;
  final Color textcolor;
  final double width;
  const OrderButton(
      {Key? key,
      required this.backgroundcolor,
      required this.textcolor,
      required this.width,
      required this.title,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 63,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: backgroundcolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // <-- Radius
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            color: textcolor,
          ),
        ),
      ),
    );
  }
}
