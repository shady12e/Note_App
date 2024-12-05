import 'package:flutter/material.dart';
import 'package:note_app/customs/custom_text_fild.dart';
import 'package:note_app/customs/customs_elevted_bottom.dart';

class Modelsheet extends StatelessWidget {
  const Modelsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            CustomTextFild(
              labelText: 'Title',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFild(
              labelText: 'Content',
              maxlines: 5,
            ),
            const SizedBox(
              height: 110,
            ),
            const CustomElevatedBottom(),
          ],
        ),
      ),
    );
  }
}
