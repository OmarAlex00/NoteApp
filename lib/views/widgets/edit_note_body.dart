import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CustomAppBar.dart';
import 'package:note_app/views/widgets/CustomTextField.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 40),
          CustomAppBar(title: 'Edit Note', icon: Icons.check),
          SizedBox(height: 40),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 20),
          CustomTextField(hint: 'Content', maxLines: 5)
        ],
      ),
    );
  }
}
