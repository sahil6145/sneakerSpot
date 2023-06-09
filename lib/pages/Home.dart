import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sneaker_spot/consts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(105, 164, 173, 1),
            Color.fromRGBO(240, 241, 242, 1)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 12,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.bars,
                    ),
                    iconSize: 30,
                  ),
                  SizedBox(width: 80),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: kgradiant,
                    ),
                    child: Center(
                      child: Text(
                        "EXPLORE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cormorant Garamond Bold',
                            fontSize: 29),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 26,
                  ),
                  Text(
                    'CATEGORY',
                    style: TextStyle(
                      fontSize: 22,
                      letterSpacing: 5,
                      fontFamily: 'Cormorant Garamond',
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(CupertinoIcons.search),
                  ),
                  kgap,
                  GestureDetector(
                    onTap: () {},
                    child: Icon(CupertinoIcons.heart),
                  ),
                  kgap,
                  GestureDetector(
                    onTap: () {},
                    child: Icon(CupertinoIcons.bag),
                  ),
                  kgap,
                  kgap1,
                  kgap1,
                  Container(
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: kgradiant,
                    ),
                    child: Center(
                      child: Text(
                        'HOME',
                        style: TextStyle(
                          fontFamily: 'Cormorant Garamond',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              khight1,
              Row(
                children: [
                  kgap1,
                  kgap1,
                  kgap,
                  Categorybuttons(
                    activeColour,
                    Text(
                      'ALL',
                      style: textStyle,
                    ),
                    () {},
                  ),
                  kgap,
                  Categorybuttons(
                      activeColour,
                      Text(
                        'RUNNING',
                        style: textStyle,
                      ),
                      () {}),
                  kgap,
                  Categorybuttons(
                      activeColour,
                      Text(
                        'FORMAL',
                        style: textStyle,
                      ),
                      () {}),
                  kgap,
                  Categorybuttons(
                      activeColour,
                      Text(
                        "JORDENS",
                        style: textStyle,
                      ),
                      () {}),
                  kgap,
                  Categorybuttons(
                      activeColour,
                      Text(
                        'SNEAKERS',
                        style: textStyle,
                      ),
                      () {}),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Categorybuttons extends StatelessWidget {
  Categorybuttons(this.colors, this.childCard, this.onPress);
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
