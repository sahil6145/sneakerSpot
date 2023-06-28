import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sneaker_spot/Refactor/textfield.dart';
import 'package:sneaker_spot/consts.dart';
import 'package:sneaker_spot/specialVariable.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:sneaker_spot/utilities/routes.dart';

Button selected = Button.sign_in;

class Login_pg extends StatefulWidget {
  @override
  State<Login_pg> createState() => _Login_pgState();
}

class _Login_pgState extends State<Login_pg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/login_page1.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 140,
              ),
              const Text(
                "WELCOME",
                style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "GLAD TO SEE YOU ",
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Textfield(
                'Enter your Email',
                'Email Id',
                false,
                const Icon(
                  CupertinoIcons.mail_solid,
                  color: Colors.black,
                ),
              ),
              Textfield(
                'Enter your password',
                'Password',
                true,
                const Icon(
                  CupertinoIcons.eye_slash,
                  color: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0.0, top: 2.0, right: 20, bottom: 0.0),
                    child: GestureDetector(
                      onTap: () {
                        print("Forgot password");
                      },
                      child: const Text(
                        "Fotgot Password ?",
                        style: textStyle,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = Button.login;
                    Future.delayed(const Duration(milliseconds: 100),
                        () => Navigator.pushNamed(context, Myroutes.HomeRoute));
                  });
                },
                child: Container(
                  child: Center(child: Text("Login ")),
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    color: selected == Button.login
                        ? activeColour
                        : inActiveColour,
                    borderRadius: BorderRadius.circular(10),
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
