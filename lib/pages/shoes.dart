import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sneaker_spot/consts.dart';
import 'package:sneaker_spot/data/shoesList.dart';

import '../specialVariable.dart';

class Shoes extends StatefulWidget {
  const Shoes();
  @override
  State<Shoes> createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  Functions buttonPress = Functions();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(103, 149, 155, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              gradient: kgradiant,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    kgap,
                    const Icon(
                      CupertinoIcons.arrow_left,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 110,
                    ),
                    const Text(
                      'sneaker spot ',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 21),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        CupertinoIcons.search,
                        size: 25,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        CupertinoIcons.bag,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                Container(
                  // margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: exploreContainer,
                  height: 250,
                  width: 400,
                  child: Column(
                    children: [
                      khight,
                      const Text(
                        'Best Sales',
                        style: TextStyle(
                            fontFamily: 'Cormorant Garamond',
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 5),
                      ),
                      khight1,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Column(
                            children: [
                              Text(
                                'Nike Kiger 9',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily:
                                      'fonts/Raleway-VariableFont_wght.ttf',
                                  fontSize: 20,
                                ),
                              ),
                              khight1,
                              SizedBox(
                                height: 100,
                                width: 90,
                                child: SingleChildScrollView(
                                  child: Text(
                                    "When approaching rocky and technical terrain, go with the comfort and speed of the Kiger 9, there for every unexpected twist and tight turn.Equipped with full-length Nike React foam and a revamped breathable upper, this agile, quick trainer helps keep you zigzagging in and out of trails with speed. It's lower to the ground and lighter than our previous iteration, so that you can handle the off-road path with pace and security.",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontFamily: 'Cormorant Garamond Light'),
                                  ),
                                ),
                              ),
                              khight1,
                              Text(
                                'MRP : ₹ 12 795.00',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily:
                                        'fonts/Raleway-VariableFont_wght.ttf'),
                              ),
                            ],
                          ),
                          Container(
                            height: 180,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.network(
                                'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/2daed444-f850-44e9-8529-905e22708662/kiger-9-trail-running-shoes-pWCp9q.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                kgap1,
                khight1,
                khight1,
                Container(
                  height: 30,
                  width: 180,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(child: Text('RUNNING SHOES')),
                ),
                khight1,
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            shoesCard(
                                runningShoes[0].url,
                                runningShoes[0].name,
                                runningShoes[0].price,
                                runningShoes[0].type,
                                () {}),
                            kgap,
                            shoesCard(
                                runningShoes[1].url,
                                runningShoes[1].name,
                                runningShoes[1].price,
                                runningShoes[1].type,
                                () {}),
                            kgap,
                            shoesCard(
                                runningShoes[2].url,
                                runningShoes[2].name,
                                runningShoes[2].price,
                                runningShoes[2].type,
                                () {}),
                            kgap,
                            shoesCard(
                                runningShoes[3].url,
                                runningShoes[3].name,
                                runningShoes[3].price,
                                runningShoes[3].type,
                                () {}),
                          ],
                        ),
                      ),
                      khight1,
                      Container(
                        height: 30,
                        width: 180,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(child: Text('NIKE JORDANS ')),
                      ),
                      khight1,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            shoesCard(Jordans[0].url, Jordans[0].name,
                                Jordans[0].price, Jordans[0].type, () {}),
                            kgap,
                            shoesCard(Jordans[1].url, Jordans[2].name,
                                Jordans[4].price, Jordans[3].type, () {}),
                            kgap,
                            shoesCard(Jordans[2].url, Jordans[2].name,
                                Jordans[2].price, Jordans[2].type, () {}),
                            kgap,
                            shoesCard(Jordans[3].url, Jordans[3].name,
                                Jordans[3].price, Jordans[3].type, () {}),
                          ],
                        ),
                      ),
                      khight1,
                      Container(
                        height: 30,
                        width: 180,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(child: Text('SNEAKERS ')),
                      ),
                      khight,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            shoesCard(Sneakers[0].url, Sneakers[0].name,
                                Sneakers[0].price, Sneakers[0].type, () {}),
                            kgap,
                            shoesCard(Sneakers[1].url, Sneakers[1].name,
                                Sneakers[1].price, Sneakers[1].type, () {}),
                            kgap,
                            shoesCard(Sneakers[2].url, Sneakers[2].name,
                                Sneakers[2].price, Sneakers[2].type, () {}),
                            kgap,
                            shoesCard(Sneakers[3].url, Sneakers[3].name,
                                Sneakers[3].price, Sneakers[3].type, () {}),
                          ],
                        ),
                      ),
                      khight1,
                      Container(
                        height: 30,
                        width: 180,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(child: Text('SLIDERS ')),
                      ),
                      khight1,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            shoesCard(Sliders[0].url, Sliders[0].name,
                                Sliders[0].price, Sliders[0].type, () {}),
                            kgap,
                            shoesCard(Sliders[1].url, Sliders[1].name,
                                Sliders[1].price, Sliders[1].type, () {}),
                            kgap,
                            shoesCard(Sliders[2].url, Sliders[2].name,
                                Sliders[2].price, Sliders[2].type, () {}),
                            kgap,
                            shoesCard(Sliders[3].url, Sliders[3].name,
                                Sliders[3].price, Sliders[3].type, () {}),
                            kgap,
                          ],
                        ),
                      ),
                      khight1,
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class shoesCard extends StatelessWidget {
  shoesCard(this.url, this.name, this.price, this.type, this.onTab);
  final VoidCallback onTab;
  final String url;
  final String name;
  final String type;
  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTab,
        child: Container(
          height: 290,
          width: 180,
          decoration: const BoxDecoration(
            color: Colors.white,
            //borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              khight,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'NIKE',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, fontFamily: 'Crimson Text'),
                  ),
                  SizedBox(
                    height: 20,
                    width: 65,
                    child: Image.network(
                      'http://s3.gomedia.us/wp-content/uploads/2015/05/Nike_Swoosh_Logo_Black_original.jpg',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              Container(
                height: 150,
                width: 190,
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
              khight1,
              Text(
                name,
                style: cardName,
              ),
              Text(
                type,
                style: cardName,
              ),
              Text(
                price,
                style: cardName,
              ),
            ],
          ),
        ));
  }
}
