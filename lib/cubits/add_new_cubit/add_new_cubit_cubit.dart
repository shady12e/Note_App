import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constes.dart';
import 'package:note_app/model/note_item_model.dart';

import 'add_new_cubit_state.dart';

class AddNewCubitCubit extends Cubit<AddNewCubitState> {
  AddNewCubitCubit() : super(AddNewCubitInitial());

  addNewNote(NoteModel note) async {
    emit(AddNewCubitLouding());
    try {
      var notesBox = Hive.box<NoteModel>(knotesBox);
      emit(AddNewCubitSucceful());
      await notesBox.add(note);
    } catch (e) {
      emit(
        AddNewCubitFuiler(e.toString()),
      );
    }
  }
}
