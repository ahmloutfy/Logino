import 'package:flutter/material.dart';
import '../widgets/clickable_texts.dart';
import '../widgets/form_content.dart';
import '../widgets/shapes/curved_shapes_logup.dart';
import '../widgets/sign_in_up_button.dart';

class HomeLogup extends StatelessWidget {
  const HomeLogup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              const CurvedShapesLogup(),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.1,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Column(
                    children: [
                      const Form(
                        child: Column(
                          children: [
                            FormContent(
                              name: 'Name',
                              inputType: TextInputType.text,
                              isObscure: false,
                              formBackgroundColor: Color(0xff58BEE6),
                              hintTextColor: Colors.white,
                              borderColor: Colors.white,
                              typingCursorColor: Colors.white,
                              actionOfInput: TextInputAction.next,
                              userInputColor: Colors.white,

                            ),
                            SizedBox(
                              height: 25,
                            ),
                            FormContent(
                              name: 'Email',
                              inputType: TextInputType.emailAddress,
                              isObscure: false,
                              formBackgroundColor: Color(0xff58BEE6),
                              hintTextColor: Colors.white,
                              borderColor: Colors.white,
                                typingCursorColor: Colors.white,
                              actionOfInput: TextInputAction.next,
                              userInputColor: Colors.white,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            FormContent(
                              name: 'Password',
                              inputType: TextInputType.visiblePassword,
                              isObscure: true,
                              formBackgroundColor: Color(0xff58BEE6),
                              hintTextColor: Colors.white,
                              borderColor: Colors.white,
                                typingCursorColor: Colors.white,
                              actionOfInput: TextInputAction.done,
                              userInputColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SignInUpButton(
                        name: 'Sign Up',
                        press: () {},
                        textButtonColor: Colors.white,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: TextButtonsContent(
                          text: 'Sign In',
                          clickableTextColor: Colors.white,
                        ),
                      ),
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
