import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = Color(0xff4F6D7A);
  addnote(NoteModel note) async {
    note.color = color!.value;
    emit(AddNoteLoading());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);
      await notesbox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
