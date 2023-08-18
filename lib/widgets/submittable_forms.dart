import 'package:flutter/material.dart';

import 'form_content.dart';

class SubmittableForms extends StatefulWidget {
  const SubmittableForms({super.key});

  @override
  State<SubmittableForms> createState() => _SubmittableFormsState();
}

class _SubmittableFormsState extends State<SubmittableForms> {
  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Column(
        children: [
          FormContent(
            name: 'Email',
            inputType: TextInputType.emailAddress,
            isObscure: false,
          ),
          SizedBox(
            height: 25,
          ),
          FormContent(
            name: 'Password',
            inputType: TextInputType.visiblePassword,
            isObscure: true,
          ),
        ],
      ),
    );
  }
}
