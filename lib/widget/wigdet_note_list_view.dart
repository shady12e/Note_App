import 'package:flutter/material.dart';
import 'package:note_app/widget/wigdet_note_items.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
          itemCount: 5,
          itemBuilder: (context, index) {
            return const NoteItems();
          },
        ),
      ),
    );
  }
}
