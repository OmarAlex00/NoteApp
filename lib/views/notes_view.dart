import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/CustomAppBar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
