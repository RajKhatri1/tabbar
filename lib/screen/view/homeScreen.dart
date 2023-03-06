import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List c1 = [
    Colors.greenAccent.shade100,
    Colors.pinkAccent.shade100,
    Colors.tealAccent.shade100,
  ];
  List l1 = [
    "assets/images/shoes.png",
    "assets/images/tshirt.png",
    "assets/images/watch.png",
    "assets/images/shoes.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              product(Colors.greenAccent.shade100, l1[0]),
              SizedBox(
                height: 5,
              ),
              product(Colors.pinkAccent.shade100, l1[1]),
              SizedBox(
                height: 5,
              ),
              product(Colors.tealAccent.shade100, l1[2]),
              SizedBox(
                height: 5,
              ),
              product(Colors.greenAccent.shade100, l1[3]),
            ],
          ),
        ),
      ),
    );
  }

  Widget product(Color c1, String img) {
    return Container(
      height: 200,
      width: double.infinity,
      color: c1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("${img}"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "AIR Jordan special shoes",
                  style: TextStyle(color: Colors.black45),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "\$ 150",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sell",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 25,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "BUY NOW",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart,
                        size: 15,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
