import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes/notes_cubit.dart';
import 'package:note_app/cubits/notes/notes_state.dart';
import 'package:note_app/model/note_item_model.dart';
import 'package:note_app/widget/wigdet_note_items.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key});

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  

  @override
  Widget build(BuildContext context) {
    
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
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
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return NoteItems(
                  note: notes[index],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
