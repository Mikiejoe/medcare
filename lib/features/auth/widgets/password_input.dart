import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _obscureText = true;
  Icon _icon = const Icon(Icons.visibility, color: Colors.grey);
  void showPassword() {
    setState(() {
      _obscureText = !_obscureText;
      _icon = _obscureText
          ? const Icon(Icons.visibility, color: Colors.grey)
          : const Icon(Icons.visibility_off, color: Colors.grey);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: showPassword,
          icon: _icon,
        ),
        prefixIcon: const Icon(
          Icons.lock_outline,
          color: Colors.grey,
        ),
        filled: true,
        fillColor: Colors.grey.shade300,
        hintText: "Password",
        hintStyle: const TextStyle(color: Colors.grey),
        focusedBorder: InputBorder.none,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none),
      ),
    );
  }
}
