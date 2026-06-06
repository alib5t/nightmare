import 'dart:async';
import 'package:flutter/material.dart';
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

          // 🖼 Arka plan
          Positioned.fill(
            child: Image.asset(
              "assets/wallpaper.jpg",
              fit: BoxFit.cover,
            ),
          ),

          // 🕒 Dijital saat (üstte)
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
