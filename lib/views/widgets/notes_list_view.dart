import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/cubits/show_notes/show_notes_cubit.dart';
import 'package:note_app/views/widgets/note_card.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowNotesCubit, ShowNotesState>(
      builder: (context, state) {
        List<Note> notes =
            BlocProvider.of<ShowNotesCubit>(context).notesList ?? [];
        return ListView.builder(
          itemCount: notes.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: NoteCard(),
            );
          },
        );
      },
    );
  }
}
