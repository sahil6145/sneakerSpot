import 'package:flutter/material.dart';

class footWareContainer extends StatelessWidget {
  final String footwareType;
  final VoidCallback onTab;
  final Color color;
  footWareContainer(this.footwareType, this.onTab, this.color);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            footwareType,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                letterSpacing: 2),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
