import 'package:flutter/material.dart';
import 'package:logino/constants.dart';

class FormContent extends StatelessWidget {
  final String name;
  final TextInputType inputType;
  final bool isObscure;
  final Color formBackgroundColor , hintTextColor , borderColor;

  const FormContent({
    super.key,
    required this.name,
    required this.inputType,
    required this.isObscure, required this.formBackgroundColor, required this.hintTextColor, required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: isObscure,
      decoration: InputDecoration(
        fillColor: formBackgroundColor,
        filled: true,
        hintText: name,
        hintStyle: TextStyle(
          color: hintTextColor,
        ),
        enabledBorder: defaultInputBorder.copyWith(
          borderSide: BorderSide(color: borderColor,
        ),
        ),
        focusedBorder: defaultInputBorder.copyWith(
    borderSide: BorderSide(color: borderColor,
    ),
      ),
    ),
    );
  }
}