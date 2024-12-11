import 'package:flutter/material.dart';
import 'package:note_app/model/note_item_model.dart';
import 'package:note_app/widget/wigdet_edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key , required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNoteViewBody(noteModel: noteModel),
    );
  }
}
