import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/NoteCard.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: NoteCard(),
        );
      },
    );
  }
}
