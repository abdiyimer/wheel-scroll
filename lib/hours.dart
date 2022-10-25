import 'package:flutter/material.dart';

class myhours extends StatelessWidget {
  int hours;
  myhours({super.key, required this.hours});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        color: Colors.grey,
        child: Text(
          //  hours.toString(),
          hours < 10 ? '0' + hours.toString() : hours.toString(),
          style: TextStyle(
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
