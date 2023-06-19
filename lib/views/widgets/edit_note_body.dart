import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/cubits/show_notes/show_notes_cubit.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final Note note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 40),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<ShowNotesCubit>(context).showAllNote();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 40),
          CustomTextField(
            currentValue: widget.note.title,
            hint: 'Title',
            onchange: (p0) {
              title = p0;
            },
          ),
          const SizedBox(height: 20),
          CustomTextField(
            currentValue: widget.note.subTitle,
            hint: 'Content',
            maxLines: 5,
            onchange: (p0) {
              subTitle = p0;
            },
          )
        ],
      ),
    );
  }
}
