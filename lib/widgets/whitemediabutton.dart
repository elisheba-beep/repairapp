import 'package:flutter/material.dart';

class WhiteMediaButton extends StatelessWidget {
  final String url;
  const WhiteMediaButton({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      child: ElevatedButton(
        onPressed: () {},
        child: Image.asset(
          url,
        ),
        style: ElevatedButton.styleFrom(
          side: const BorderSide(
            color: Color(0xfffffefe),
          ),
          shadowColor: const Color(0xffd3d3d3),
          primary: const Color(0xfffffefe),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
