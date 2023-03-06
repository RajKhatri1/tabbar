import 'package:flutter/material.dart';

class tshirtScreen extends StatefulWidget {
  const tshirtScreen({Key? key}) : super(key: key);

  @override
  State<tshirtScreen> createState() => _tshirtScreenState();
}

class _tshirtScreenState extends State<tshirtScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                  tshirt(),
                  SizedBox(height: 5,),
                  tshirt(),
                SizedBox(height: 5,),
                tshirt(),
                SizedBox(height: 5,),
                tshirt(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget tshirt()
  {
    return Container(
      height: 200,
      width: double.infinity,
      color: Colors.pinkAccent.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/tshirt.png",height: 170),
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
                "\$150",
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
