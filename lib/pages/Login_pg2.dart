import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sneaker_spot/Refactor/textfield.dart';
import 'package:sneaker_spot/consts.dart';
import 'package:sneaker_spot/specialVariable.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

Button selected = Button.sign_in;

class Login_pg extends StatefulWidget {
  @override
  State<Login_pg> createState() => _Login_pgState();
}

class _Login_pgState extends State<Login_pg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
              SizedBox(
                height: 140,
              ),
              Text(
                "WELCOME",
                style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
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
                Icon(
                  CupertinoIcons.mail_solid,
                  color: Colors.black,
                ),
              ),
              Textfield(
                  'Enter your password',
                  'Password',
                  true,
                  Icon(
                    CupertinoIcons.eye_slash,
                    color: Colors.black,
                  )),
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
                      child: Text(
                        "Fotgot Password ?",
                        // textAlign: TextAlign.,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = Button.login;
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
