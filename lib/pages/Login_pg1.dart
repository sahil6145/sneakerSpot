// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sneaker_spot/consts.dart';
import 'package:sneaker_spot/Refactor/Login_button.dart';
import 'package:sneaker_spot/utilities/routes.dart';

enum Button {
  login,
  sign_in,
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

Color login_Colour = inActiveColour;
Color Sign_in_Colour = inActiveColour;
Button selected_buttons = Button.login;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 400,
              ),
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      Future.delayed(
                          const Duration(milliseconds: 100),
                          () => Navigator.pushNamed(
                              context, Myroutes.loginRoute));
                      selected_buttons = Button.login;
                    },
                  );
                },
                child: Sign_in_Buttons(
                  buttonName: 'Login',
                  color: selected_buttons == Button.login
                      ? activeColour
                      : inActiveColour,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      selected_buttons = Button.sign_in;
                      Future.delayed(
                          const Duration(milliseconds: 100),
                          () => Navigator.pushNamed(
                              context, Myroutes.SigninRoute));
                    },
                  );
                },
                child: Sign_in_Buttons(
                  buttonName: 'Sign in',
                  color: selected_buttons == Button.sign_in
                      ? activeColour
                      : inActiveColour,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
