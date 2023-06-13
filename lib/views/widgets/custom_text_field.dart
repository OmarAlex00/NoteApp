import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        border: textCustomBorder(),
        focusedBorder: textCustomBorder(kPrimaryColor),
        enabledBorder: textCustomBorder(),
      ),
      maxLines: maxLines,
    );
  }

  OutlineInputBorder textCustomBorder([color]) {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
