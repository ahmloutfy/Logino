import 'package:flutter/material.dart';

class TextButtonsContent extends StatelessWidget {

  final String text;
  final Color clickableTextColor;

  const TextButtonsContent({
    super.key, required this.text, required this.clickableTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: clickableTextColor,
          fontSize: 20,
        ),
      ),
    );
  }
}