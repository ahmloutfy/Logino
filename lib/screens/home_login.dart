import 'package:flutter/material.dart';
import '../widgets/clickable_texts.dart';
import '../widgets/curved_shapes.dart';
import '../widgets/sign_in_button.dart';
import '../widgets/submittable_forms.dart';

class HomeLogin extends StatelessWidget {
  const HomeLogin({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              const CurvedShapes(),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.1,
                left: 0,
                right: 0,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 45),
                  child: Column(
                    children: [
                      SubmittableForms(),
                      SizedBox(
                        height: 30,
                      ),
                      SignInButton(),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          TextButtonsContent(text: 'Sign Up',),
                          Spacer(),
                          TextButtonsContent(text: 'Forgot Password',),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}







