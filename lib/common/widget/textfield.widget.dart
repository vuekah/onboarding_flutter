import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hint;
  final bool obscureText;

  const TextFieldWidget(
      {super.key, required this.hint, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: TextField(
      
        obscureText: obscureText,
        style: const TextStyle(
      
            fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w500),
        decoration: InputDecoration(
            hintText: hint,
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(width: 2, color: Color(0xFF1F41BB)),
            ),
            filled: true,
            fillColor: const Color(0xFFECEFF7),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
