import 'package:flutter/material.dart';

const Color activeColour = Colors.white;
const Color inActiveColour = Color.fromRGBO(85, 82, 82, 0.612);

final ktheme = ThemeData(
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontFamily: 'Raleway',
    ),
  ),
);

const khight = SizedBox(
  height: 5,
);
const khight1 = SizedBox(
  height: 10,
);
const kgap = SizedBox(
  width: 5,
);
const kgap1 = SizedBox(
  width: 10,
);

const exploreContainer = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(11, 16, 16, 10),
      Color.fromRGBO(147, 173, 176, 60),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  ),
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(40),
    bottomRight: Radius.circular(40),
  ),
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
const backgroundGradiant = LinearGradient(
  colors: [
    Color.fromRGBO(105, 164, 173, 1),
    Color.fromRGBO(240, 241, 242, 1),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const textStyle = TextStyle(
  //fontFamily: 'Raleway',
  fontSize: 13,
  color: Colors.black,
);

const cardName = TextStyle(
  fontSize: 15,
  fontFamily: 'Cormorant Garamond Light',
);
