import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/add_note_form.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: const SingleChildScrollView(
        child: NoteForm(),
      ),
    );
  }
}
