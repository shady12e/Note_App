import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFild extends StatelessWidget {
  const CustomTextFild(
      {super.key,
      this.Hint,
       this.labelText,
      this.maxlines = 1,
      this.onSaved,
      this.validate, 
      this.onChange});
  final String? labelText;
  final int maxlines;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validate;
  final String? Hint ;
  final void Function(String)? onChange ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange ,
      onSaved: onSaved,
      validator: validate,
      maxLines: maxlines,
      cursorColor: const Color(0xff62FCD7),
      decoration: InputDecoration(
        hintText: Hint ,
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
