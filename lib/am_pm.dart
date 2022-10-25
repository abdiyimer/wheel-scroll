import 'package:flutter/material.dart';

class ampm extends StatelessWidget {
  final bool isitam;
  //int hours;
  ampm({super.key, required this.isitam});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        color: Color.fromARGB(31, 35, 27, 27),
        child: Text(
          isitam == true ? 'am' : 'pm',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
