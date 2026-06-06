import 'dart:async';
import 'package:flutter/material.dart';

class DigitalClock extends StatefulWidget {
  const DigitalClock({super.key});

  @override
  State<DigitalClock> createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  String time = "";
  String date = "";

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 1), (timer) {
      final now = DateTime.now();

      setState(() {
        time =
            "${now.hour.toString().padLeft(2, '0')}:"
            "${now.minute.toString().padLeft(2, '0')}:"
            "${now.second.toString().padLeft(2, '0')}";

        date =
            "${now.day.toString().padLeft(2, '0')}/"
            "${now.month.toString().padLeft(2, '0')}/"
            "${now.year}";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [

        Text(
          time,
          style: const TextStyle(
            fontSize: 54,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            shadows: [
              Shadow(
                blurRadius: 20,
                color: Colors.black,
                offset: Offset(0, 0),
              )
            ],
          ),
        ),

        const SizedBox(height: 6),

        Text(
          date,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white70,
          ),
        ),

      ],
    );
  }
}
