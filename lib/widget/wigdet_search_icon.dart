import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomIconSreach extends StatelessWidget {
  const CustomIconSreach({super.key, required this.icon, required this.ontap});
  final IconData icon;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: IconButton(
        onPressed: ontap,
        icon: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
