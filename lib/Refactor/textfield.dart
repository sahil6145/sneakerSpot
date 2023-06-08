import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final String lable;
  final String hintLable;
  final bool obscure;
  final Icon IconData;
  Textfield(this.lable, this.hintLable, this.obscure, this.IconData);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        obscureText: obscure,
        decoration: InputDecoration(
          suffixIcon: IconData,
          border: OutlineInputBorder(),
          labelText: lable,
          hintText: hintLable,
          labelStyle: TextStyle(
            fontFamily: "Cormorant Garamond",
            fontSize: 19,
            fontWeight: FontWeight.w800,
          ),
          hintStyle: TextStyle(
            fontFamily: "Cormorant Garamond",
            fontSize: 19,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
