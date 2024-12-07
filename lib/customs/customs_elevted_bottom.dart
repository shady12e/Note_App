import 'package:flutter/material.dart';

class CustomElevatedBottom extends StatelessWidget {
  const CustomElevatedBottom({super.key, required this.onPressed});
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            const Color(0xff62FCD7),
          ),
        ),
        onPressed: onPressed,
        child: const Text(
          'Add',
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
