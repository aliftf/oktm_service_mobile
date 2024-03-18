import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String hintText;
  final bool? isPasswordInput;
  final bool? isNoteInput;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.isPasswordInput = false,
    this.isNoteInput = false
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPasswordInput == true ? true : false,
      enableSuggestions: isPasswordInput == true ? false : true,
      autocorrect: isPasswordInput == true ? false : false,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFEBEBEB),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFCECECE), width: 0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFCECECE), width: 0.5),
          borderRadius: BorderRadius.circular(10),
        )
      ),
    );
  }
}