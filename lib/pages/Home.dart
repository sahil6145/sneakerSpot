import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sneaker_spot/consts.dart';
import 'package:sneaker_spot/Refactor/home_main_container.dart';
import 'package:sneaker_spot/specialVariable.dart';
import 'package:sneaker_spot/utilities/routes.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Functions buttons = Functions();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: backgroundGradiant,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      height: 50,
                      width: 12,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.bars,
                      ),
                      iconSize: 30,
                    ),
                    const SizedBox(width: 80),
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: kgradiant,
                      ),
                      child: const Center(
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 70,
                      width: 26,
                    ),
                    const Text(
                      'CATEGORY',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        letterSpacing: 5,
                        fontFamily: 'Cormorant Garamond',
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(),
                        color: Colors.white,
                      ),
                      height: 28,
                      child: DropdownButton<String>(
                        focusColor: Color.fromARGB(0, 255, 255, 255),
                        elevation: 1,
                        alignment: Alignment.center,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        hint: Text(
                          'SHOES BRANDS',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        items: const [
                          DropdownMenuItem(
                            child: Text("NIKE"),
                            value: 'Nike',
                          ),
                          DropdownMenuItem(
                            child: Text("PUMA"),
                            value: 'Puma',
                          ),
                          DropdownMenuItem(
                            child: Text("ADIDAS"),
                            value: 'Adidas',
                          ),
                        ],
                        onChanged: (value) {
                          // here we have add the navigator so that we can go to the brands pages
                          print(value);
                        },
                      ),
                    ),
                  ],
                ),
                Home_container(
                  'NEW ARRIVALS',
                  () {
                    setState(() {
                      Navigator.pushNamed(context, Myroutes.NikeShoes);
                    });
                  },
                  const Image(
                    image: NetworkImage(
                        'https://www.si.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cg_xy_center%2Cq_auto:good%2Cw_1200%2Cx_2326%2Cy_2185/MTkzMjEwNDg3MDU4NDc0OTE1/usatsi_19186924.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                Home_container(
                  'TOP BRANDS SHOES ',
                  () {},
                  const Image(
                    image: NetworkImage(
                        'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2022%2F12%2Fbest-sneakers-of-2022-editors-picks-000.jpg?w=960&cbr=1&q=90&fit=max'),
                    fit: BoxFit.cover,
                  ),
                ),
                Home_container(
                  'SPORTS',
                  () {},
                  const Image(
                    image: NetworkImage(
                        'https://media.gq.com/photos/63eba1b2275d2fef78a425c2/3:2/w_1686,h_1124,c_limit/nike-running-shoes-streakfly-invincible.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                khight1,
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Home_container2(
                        Image(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&w=1000&q=80'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Home_container2(
                        Image(
                          image: NetworkImage(
                              'https://cdn.shopify.com/s/files/1/0549/3705/9395/products/a504151f-1e01-407c-895b-4fab6dbaa3d8_b071cc53-4a64-4e6c-a12b-d21af898d264.jpg?v=1641198025&width=1445'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Home_container2(
                        Image(
                          image: NetworkImage(
                              'https://assets.ajio.com/medias/sys_master/root/20221031/nOAx/635fc929f997ddfdbd4c03f1/-473Wx593H-464878523-white-MODEL.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Home_container2(
                        Image(
                          image: NetworkImage(
                              'https://rukminim1.flixcart.com/image/450/500/xif0q/shoe/s/j/q/-original-imaggdfghhvfhdyq.jpeg?q=90&crop=false'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                khight1,
                const Text(
                  "RECOMENDED ONES",
                  style: TextStyle(
                    fontFamily: 'Cormorant Garamond Bold',
                    fontSize: 20,
                  ),
                ),
                khight1,
                Home_container(
                  'MOST POPULAR',
                  () {},
                  const Image(
                    image: NetworkImage(
                        'https://preview.redd.it/whats-your-go-to-color-palette-v0-jzzpwuqnykoa1.jpg?width=640&crop=smart&auto=webp&s=40b0a553da22cee32e5a219ea71881dc8762389c'),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 14, 13, 13),
          height: 50,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    CupertinoIcons.search,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    CupertinoIcons.heart,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    CupertinoIcons.bag,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    CupertinoIcons.settings,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Home_container2 extends StatelessWidget {
  const Home_container2(
    this.image,
  );
  final Widget image;
  //inal String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(left: 25),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.amber,
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(40), child: image),
          ),
        ),
      ],
    );
  }
}
