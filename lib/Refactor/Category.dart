import 'package:flutter/material.dart';

class Categorybuttons extends StatelessWidget {
  Categorybuttons(this.childCard, this.onPress, this.colors);
  final Color colors;
  final Widget childCard;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 30,
        width: 70,
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: childCard),
      ),
    );
  }
}
