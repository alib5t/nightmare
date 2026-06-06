import 'package:flutter/material.dart';

void main() {
  runApp(const MyLauncher());
}

class MyLauncher extends StatelessWidget {
  const MyLauncher({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LauncherHome(),
    );
  }
}

class LauncherHome extends StatelessWidget {
  const LauncherHome({super.key});

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

        ],
      ),
    );
  }
}
