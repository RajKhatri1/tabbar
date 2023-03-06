import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tabbar/screen/view/homeScreen.dart';
import 'package:tabbar/screen/view/tshirtpage.dart';
import 'package:tabbar/screen/view/watchPage.dart';

class TabBarscreen extends StatefulWidget {
  const TabBarscreen({Key? key}) : super(key: key);

  @override
  State<TabBarscreen> createState() => _TabBarscreenState();
}

class _TabBarscreenState extends State<TabBarscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: Icon(Icons.arrow_back,color: Colors.black),
            actions: [
              Icon(Icons.pin_drop,color: Colors.black,),
              SizedBox(width: 15,),
              Icon(Icons.card_travel,color: Colors.black,),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "All Product",
                ),
                Tab(
                  text: "T-shirt",
                ),
                Tab(
                  text: "watchs",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Homescreen(),
              tshirtScreen(),
              watch(),
            ],
          )
        ),
      ),
    );
  }
}
