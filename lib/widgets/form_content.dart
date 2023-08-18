import 'package:flutter/material.dart';

class FormContent extends StatelessWidget {
  final String name;
  final TextInputType inputType;
  final bool isObscure;

  const FormContent({
    super.key,
    required this.name,
    required this.inputType,
    required this.isObscure,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: isObscure,
      decoration: InputDecoration(
        fillColor: const Color(0xffE4E4E4),
        filled: true,
        hintText: name,
        helperStyle: const TextStyle(
          color: Colors.black26,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black26),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}