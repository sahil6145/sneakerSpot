// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sneaker_spot/consts.dart';
import 'package:sneaker_spot/Refactor/Login_button.dart';

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
      decoration: BoxDecoration(
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
              SizedBox(
                height: 400,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    print("Login");
                    selected_buttons = Button.login;
                    //selected_Button = Login_pg.Login;
                  });
                },
                child: Sign_in_Buttons(
                  buttonName: 'Login',
                  color: selected_buttons == Button.login
                      ? activeColour
                      : inActiveColour,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    //selected_Button = Login_pg.Sign_in;
                    selected_buttons = Button.sign_in;
                    print("Sign_in");
                  });
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
