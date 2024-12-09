import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constes.dart';

import 'package:note_app/model/note_item_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;

  fichinAllNote() {
    var notesBox = Hive.box<NoteModel>(knotesBox);

    notes = notesBox.values.toList();
  }
}
