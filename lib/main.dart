import 'package:flutter/material.dart';
import 'package:sneaker_spot/pages/Login_pg1.dart';
import 'package:sneaker_spot/pages/Login_pg2.dart';
import 'package:sneaker_spot/pages/Sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Sign_inPg(),
      ),
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
    );
  }
}
