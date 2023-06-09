import 'package:flutter/material.dart';

const Color activeColour = Color.fromRGBO(236, 233, 233, 1);
const Color inActiveColour = Color.fromRGBO(85, 82, 82, 0.612);
final ktheme = ThemeData(
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      fontFamily: 'Raleway',
    ),
  ),
);

final khight = SizedBox(
  height: 5,
);
final khight1 = SizedBox(
  height: 10,
);
final kgap = SizedBox(
  width: 5,
);
final kgap1 = SizedBox(
  width: 10,
);

const kgradiant = LinearGradient(
  colors: [
    Color.fromRGBO(103, 149, 155, 1),
    Color.fromRGBO(174, 200, 203, 1),
    Color.fromRGBO(89, 128, 133, 1),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const textStyle = TextStyle(
  fontFamily: 'Raleway',
  fontSize: 13,
);
