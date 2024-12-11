import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes/notes_cubit.dart';
import 'package:note_app/customs/custom_text_fild.dart';
import 'package:note_app/model/note_item_model.dart';
import 'package:note_app/widget/wigdet_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;
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
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.subtitle =
                    subtitle ?? widget.noteModel.subtitle;
                widget.noteModel.save();
                BlocProvider.of<NotesCubit>(context).fichinAllNote();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFild(
                onChange: (value) {
                  title = value;
                },
                Hint: widget.noteModel.title,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFild(
                onChange: (value) {
                  subtitle = value;
                },
                Hint: widget.noteModel.subtitle,
                maxlines: 5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
