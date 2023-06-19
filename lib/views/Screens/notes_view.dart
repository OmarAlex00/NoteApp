import 'package:flutter/material.dart';

import 'package:note_app/views/widgets/bottom_sheet.dart';
import 'package:note_app/views/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
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
