import 'package:flutter/material.dart';
import 'package:tabbar/screen/view/homeScreen.dart';
import 'package:tabbar/screen/view/tabbarPage.dart';
import 'package:tabbar/screen/view/tshirtpage.dart';
import 'package:tabbar/screen/view/watchPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => TabBarscreen(),
        'tshirt' : (context) => tshirtScreen(),
        'watch' : (context) => watch(),
        'Tabbar' : (context) => TabBarscreen(),
      },
    )
  );
}

