import 'package:flutter/material.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/views/widgets/edit_note_body.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key, required this.note});
  final Note note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(note: note),
    );
  }
}
