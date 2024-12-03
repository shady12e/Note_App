import 'package:flutter/material.dart';

class CustomIconSreach extends StatelessWidget {
  const CustomIconSreach({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: IconButton(
        onPressed: () {
          //search icon
        },
        icon: Icon(
          Icons.search,
          size: 30,
        ),
      ),
    );
  }
}
