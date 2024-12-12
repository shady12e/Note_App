import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constes.dart';
import 'package:note_app/model/note_item_model.dart';
import 'add_new_cubit_state.dart';

class AddNewCubitCubit extends Cubit<AddNewCubitState> {
  AddNewCubitCubit() : super(AddNewCubitInitial());

   Color color = const Color(0xffE0607E);
  addNewNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNewCubitLouding());
    try {
      var notesBox = Hive.box<NoteModel>(knotesBox);

      await notesBox.add(note);
      emit(AddNewCubitSucceful());
    } catch (e) {
      emit(
        AddNewCubitFuiler(e.toString()),
      );
    }
  }
}
