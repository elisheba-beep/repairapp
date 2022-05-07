import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hinttext;
  final bool obscuretext;
  const AppTextField(
      {Key? key, required this.hinttext, this.obscuretext = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: Material(
        borderRadius: BorderRadius.circular(
          8,
        ),
        elevation: 8.0,
        child: TextField(
          obscureText: obscuretext,
          cursorColor: const Color(0xff1B1B1D),
          decoration: InputDecoration(
            hintText: hinttext,
            fillColor: const Color(0xffFFFEFE),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                8,
              ),
              borderSide: BorderSide.none,
            ),
            labelStyle: const TextStyle(
              color: Color(0xff1B1B1D),
            ),
          ),
        ),
      ),
    );
  }
}
