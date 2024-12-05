import 'package:flutter/material.dart';
import 'package:note_app/customs/custom_text_fild.dart';
import 'package:note_app/widget/wigdet_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit Note ',
              icon: Icons.done,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFild(labelText: 'Title'),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFild(
                labelText: 'Content',
                maxlines: 5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
