import 'package:flutter/material.dart';
import 'dart:async';
import 'widgets/digital_clock.dart';

void main() {
  runApp(MyLauncher());
}

class MyLauncher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          // 🖼 wallpaper
          Positioned.fill(
            child: Image.asset(
              "assets/wallpaper.jpg",
              fit: BoxFit.cover,
            ),
          ),

          // 🕒 clock
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 80),
              child: DigitalClock(),
            ),
          ),

        ],
      ),
    );
  }
}
