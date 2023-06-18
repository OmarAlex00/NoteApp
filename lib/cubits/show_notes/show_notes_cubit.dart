import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';

import '../../Models/note_model.dart';

part 'show_notes_state.dart';

class ShowNotesCubit extends Cubit<ShowNotesState> {
  ShowNotesCubit() : super(ShowNotesInitial());

  List<Note>? notesList;
  showAllNote() {
    var notesBox = Hive.box<Note>(kNoteBox);
    notesList = notesBox.values.toList();
  }
}
