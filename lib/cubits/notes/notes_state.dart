part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoudingState extends NotesState {}

final class NotessucessState extends NotesState {
  final List<NoteModel> notes;

  NotessucessState( this.notes);

}

final class NotesFulireState extends NotesState {
  final String error;

  NotesFulireState( this.error);
}
