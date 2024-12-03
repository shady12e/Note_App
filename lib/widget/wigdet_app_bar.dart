import 'package:flutter/material.dart';
import 'package:note_app/widget/wigdet_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Notes',
            style: TextStyle(
              fontSize: 35,
            ),
          ),
          CustomIconSreach(),
        ],
      ),
    );
  }
}
