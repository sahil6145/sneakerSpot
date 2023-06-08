import 'package:flutter/material.dart';

class Sign_in_Buttons extends StatelessWidget {
  Sign_in_Buttons({required this.buttonName, required this.color});
  String buttonName;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
            fontFamily: 'Cormorant Garamond',
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
