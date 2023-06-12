import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CustomAppBar.dart';

import 'NotesListView.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 40),
          CustomAppBar(title: 'Notes', icon: Icons.search),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: NoteListView(),
          )),
        ],
      ),
    );
  }
}
