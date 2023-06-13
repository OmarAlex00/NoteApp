import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/views/Screens/edit_note_screen.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const EditNoteScreen();
          }),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 20, left: 16, bottom: 22, right: 5),
        decoration: BoxDecoration(
            color: const Color(0xffFFCD7A),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Build your career with Omar Ashraf',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 18),
                ),
              ),
              trailing: const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Icon(
                  FontAwesomeIcons.trash,
                  size: 20,
                ),
              ),
              iconColor: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                'May 21, 2022',
                style: TextStyle(
                    color: Colors.black.withOpacity(.4), fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
