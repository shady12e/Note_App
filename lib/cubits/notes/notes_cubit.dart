import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constes.dart';

import 'package:note_app/model/note_item_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fichinAllNote() {
    emit(NotesLoudingState());
    try {
      var notesBox = Hive.box<NoteModel>(knotesBox);

       List<NoteModel> notes = notesBox.values.toList();
      emit(NotessucessState(notes));
    } catch (e) {
      emit(
        NotesFulireState(e.toString() ),
      );
    }
  }
}
