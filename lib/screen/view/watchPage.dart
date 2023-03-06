import 'package:flutter/material.dart';

class watch extends StatefulWidget {
  const watch({Key? key}) : super(key: key);

  @override
  State<watch> createState() => _watchState();
}

class _watchState extends State<watch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                watch(),
                SizedBox(height: 5,),
                watch(),
                SizedBox(height: 5,),
                watch(),
                SizedBox(height: 5,),
                watch(),
                SizedBox(height: 5,),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget watch()
  {
    return  Container(
      height: 200,
      width: double.infinity,
      color: Colors.tealAccent.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/watch.png",),
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
    );
  }
}
