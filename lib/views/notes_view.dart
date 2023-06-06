import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/BottomSheet.dart';
import 'package:note_app/views/widgets/noteViewBody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const AddNotesBottomSheet();
                });
          },
          child: const Icon(Icons.add)),
      body: const NoteViewBody(),
    );
  }
}
