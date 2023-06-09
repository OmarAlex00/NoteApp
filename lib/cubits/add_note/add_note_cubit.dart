import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xff0079FF);
  addNote(Note note) async {
    emit(AddNoteLoading());

    try {
      var noteBox = Hive.box<Note>(kNoteBox);
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
