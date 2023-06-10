import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sneaker_spot/consts.dart';
import 'package:sneaker_spot/pages/Home.dart';
import 'package:sneaker_spot/utilities/routes.dart';
import '../Refactor/textfield.dart';
import 'package:sneaker_spot/specialVariable.dart';

Button selected = Button.login;

class Sign_inPg extends StatefulWidget {
  const Sign_inPg({super.key});

  @override
  State<Sign_inPg> createState() => _Sign_inPgState();
}

class _Sign_inPgState extends State<Sign_inPg> {
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 300,
              ),
              Textfield('Name', 'Enter your name', false,
                  const Icon(CupertinoIcons.person)),
              Textfield(
                'Email Id',
                'Enter your email id',
                false,
                const Icon(
                  CupertinoIcons.mail,
                  color: Colors.black26,
                ),
              ),
              Textfield(
                'Password',
                'Enter your password',
                true,
                const Icon(
                  CupertinoIcons.eye_slash,
                  color: Colors.black26,
                ),
              ),
              Textfield(
                'Confirm password',
                'Enter your password again',
                true,
                const Icon(
                  CupertinoIcons.eye_slash,
                  color: Colors.black26,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Future.delayed(const Duration(seconds: 1),
                        () => Navigator.pushNamed(context, Myroutes.HomeRoute));
                    selected = Button.sign_in;
                  });
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "Sign up ",
                    ),
                  ),
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    color: selected == Button.sign_in
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
