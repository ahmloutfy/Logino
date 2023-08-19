import 'package:flutter/material.dart';
import '../widgets/clickable_texts.dart';
import '../widgets/shapes/curved_shapes_login.dart';
import '../widgets/form_content.dart';
import '../widgets/sign_in_up_button.dart';

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
              const CurvedShapesLogin(),
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
                    name: 'Email',
                    inputType: TextInputType.emailAddress,
                    isObscure: false, formBackgroundColor: Color(0xffE4E4E4), hintTextColor: Colors.black26, borderColor: Colors.black26,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  FormContent(
                    name: 'Password',
                    inputType: TextInputType.visiblePassword,
                    isObscure: true, formBackgroundColor: Color(0xffE4E4E4), hintTextColor: Colors.black26, borderColor: Colors.black26,
                  ),
                  ],
                ),
              ),
                      const SizedBox(
                        height: 30,
                      ),
                      SignInUpButton(
                        name: 'Sign In',
                        press: () {},
                        textButtonColor: Colors.black,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Row(
                        children: [
                          TextButtonsContent(text: 'Sign Up',
                          clickableTextColor: Colors.black,
                          ),
                          Spacer(),
                          TextButtonsContent(text: 'Forgot Password',
                          clickableTextColor: Color(0xff4C505B),
                          ),
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







