import 'package:flutter/material.dart';

class SignInUpButton extends StatefulWidget {

  final String name;
  final Function press;
  final Color textButtonColor;

  const SignInUpButton({super.key, required this.name, required this.press, required this.textButtonColor});

  @override
  State<SignInUpButton> createState() => _SignInUpButtonState();
}

class _SignInUpButtonState extends State<SignInUpButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.name,
          style: TextStyle(
            fontSize: 35,
            color: widget.textButtonColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            color: Color(0xff4C505B),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            onPressed: () {
              widget.press;
            },
          ),
        ),
      ],
    );
  }
}
