import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      this.maxLines = 1,
      this.onsaved,
      this.onchange,
      this.currentValue});
  final String hint;
  final int maxLines;
  final void Function(String?)? onsaved;
  final void Function(String)? onchange;
  final String? currentValue;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: currentValue,
      onChanged: onchange,
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'This field is required';
        } else {
          return null;
        }
      },
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
