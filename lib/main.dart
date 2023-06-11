import 'package:flutter/material.dart';
import 'package:sneaker_spot/pages/Home.dart';
import 'package:sneaker_spot/pages/Login_pg1.dart';
import 'package:sneaker_spot/pages/Login_pg2.dart';
import 'package:sneaker_spot/pages/Sign_in.dart';
import 'package:sneaker_spot/utilities/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(),
      theme: ThemeData(
        fontFamily: 'Raleway',
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      initialRoute: Myroutes.HomeRoute,
      routes: {
        Myroutes.SigninRoute: (context) => Sign_inPg(),
        Myroutes.HomeRoute: (context) => Home(),
        Myroutes.loginRoute: (context) => Login_pg(),
        Myroutes.Initial_login: (context) => Login(),
      },
    );
  }
}
