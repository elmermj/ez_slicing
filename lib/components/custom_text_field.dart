import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.isPassword
  });
  final String labelText;
  final bool? isPassword;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword==null? false: isPassword!,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24), // Radius of 24
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 209, 209, 209),
            width: 0.5
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24), // Radius of 24
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 209, 209, 209),
            width: 0.5
          ),
        ),
      ),
      style: const TextStyle(color: Colors.black), // Text color
    );
  }
}