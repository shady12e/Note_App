import 'package:flutter/material.dart';
import 'package:note_app/widget/wigdet_search_icon.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});
  final String title;
  final IconData icon;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 35,
            ),
          ),
          CustomIconSreach(
            icon: icon,
            ontap: onTap,
          ),
        ],
      ),
    );
  }
}
