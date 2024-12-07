import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFild extends StatelessWidget {
  const CustomTextFild(
      {super.key,
      required this.labelText,
      this.maxlines = 1,
      this.onSaved,
      this.validate});
  final String labelText;
  final int maxlines;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: validate,
      maxLines: maxlines,
      cursorColor: const Color(0xff62FCD7),
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
    );
  }
}
