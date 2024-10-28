import 'package:flutter/material.dart';

class InputWigdet extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final TextInputType keyboardType;
  const InputWigdet(
      {super.key,
      required this.labelText,
      required this.obscureText,
      required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: labelText == "Email"
            ? const Icon(
                Icons.email_outlined,
                color: Colors.grey,
              )
            : const Icon(
                Icons.person_2_outlined,
                color: Colors.grey,
              ),
        filled: true,
        fillColor: Colors.grey.shade300,
        hintText: labelText,
        hintStyle: const TextStyle(color: Colors.grey),
        focusedBorder: InputBorder.none,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none),
      ),
    );
  }
}
