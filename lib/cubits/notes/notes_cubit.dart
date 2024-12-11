import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constes.dart';
import 'package:note_app/cubits/notes/notes_state.dart';

import 'package:note_app/model/note_item_model.dart';


class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;

  fichinAllNote() {
    var notesBox = Hive.box<NoteModel>(knotesBox);

    notes = notesBox.values.toList();

    emit(NotesSucss());
  }
}
