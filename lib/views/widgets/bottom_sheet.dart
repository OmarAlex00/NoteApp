import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note/add_note_cubit.dart';
import 'package:note_app/cubits/show_notes/show_notes_cubit.dart';
import 'package:note_app/views/widgets/add_note_form.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('Something went wrong ${state.errorMessage}');
          } else if (state is AddNoteSuccess) {
            Navigator.pop(context);
            BlocProvider.of<ShowNotesCubit>(context).showAllNote();
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const SingleChildScrollView(child: NoteForm()),
              ));
        },
      ),
    );
  }
}
