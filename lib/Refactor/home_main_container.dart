import 'package:flutter/material.dart';
import 'package:sneaker_spot/consts.dart';

class Home_container extends StatelessWidget {
  Home_container(this.Title, this.Onpress, this.image);
  final VoidCallback Onpress;
  final String Title;
  final Widget image;

  //final Widget Childcard;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: Onpress,
          child: Container(
            margin: const EdgeInsets.all(25),
            height: 300,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.transparent,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              child: image,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            Title,
            style:
                TextStyle(fontFamily: 'Cormorant Garamond Bold', fontSize: 20),
          ),
        ),
      ],
    );
  }
}
