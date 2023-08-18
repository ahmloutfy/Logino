import 'package:flutter/material.dart';

class TextButtonsContent extends StatelessWidget {

  final String text;

  const TextButtonsContent({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(
          decoration: TextDecoration.underline,
          color: Color(0xff4C505B),
          fontSize: 20,
        ),
      ),
    );
  }
}