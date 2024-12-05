import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFild extends StatelessWidget {
  CustomTextFild({super.key, required this.labelText , this.maxlines = 1});
  String labelText;
  int maxlines;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        maxLines: maxlines,
        cursorColor: Color(0xff62FCD7),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Color(0xff62FCD7),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
