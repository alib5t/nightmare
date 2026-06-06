class DigitalClock extends StatefulWidget {
  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  String time = "";
  String date = "";

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
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

        // 🕒 saat
        Text(
          time,
          style: TextStyle(
            fontSize: 52,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            shadows: [
              Shadow(
                blurRadius: 15,
                color: Colors.black,
                offset: Offset(0, 0),
              )
            ],
          ),
        ),

        SizedBox(height: 6),

        // 📅 tarih
        Text(
          date,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}