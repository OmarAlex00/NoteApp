import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/show_notes/show_notes_cubit.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';

import 'notes_list_view.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  void initState() {
    BlocProvider.of<ShowNotesCubit>(context).showAllNote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 45),
          CustomAppBar(
              title: 'Notes', icon: Icons.align_horizontal_right_sharp),
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
