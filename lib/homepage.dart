import 'package:flutter/material.dart';
import 'package:wheel_scroll/am_pm.dart';
import 'package:wheel_scroll/tile.dart';
import 'package:wheel_scroll/minutes.dart';

import 'hours.dart';

class homepage extends StatefulWidget {
  homepage({
    super.key,
  });

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  //const value;
  int value1 = 0;
  int value2 = 0;
  String value3 = 'am';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(221, 48, 40, 40),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // hours
                Container(
                  width: 80,
                  child: ListWheelScrollView.useDelegate(
                      onSelectedItemChanged: (val) {
                        setState(() {
                          value1 = val;
                        });
                      },
                      itemExtent: 55,
                      perspective: 0.0075,
                      diameterRatio: 2,
                      physics: FixedExtentScrollPhysics(),
                      childDelegate: ListWheelChildBuilderDelegate(
                        childCount: 13,
                        builder: (context, index) {
                          return myhours(
                            hours: index,
                          );
                        },
                      )),
                ),
                SizedBox(
                    // width: 20,
                    ),
                // minutes
                Container(
                  width: 80,
                  child: ListWheelScrollView.useDelegate(
                      onSelectedItemChanged: (val) {
                        setState(() {
                          value2 = val;
                        });
                      },
                      itemExtent: 55,
                      perspective: 0.0075,
                      diameterRatio: 2,
                      physics: FixedExtentScrollPhysics(),
                      childDelegate: ListWheelChildBuilderDelegate(
                        childCount: 60,
                        builder: (context, index) {
                          return mymins(
                            mins: index,
                          );
                        },
                      )),
                ),
                // am pm

                Container(
                  width: 80,
                  child: ListWheelScrollView.useDelegate(
                      onSelectedItemChanged: (val) {
                        setState(() {
                          val == 0 ? value3 = ' AM' : value3 = ' PM';
                        });
                      },
                      itemExtent: 55,
                      perspective: 0.0075,
                      diameterRatio: 2,
                      physics: FixedExtentScrollPhysics(),
                      childDelegate: ListWheelChildBuilderDelegate(
                        childCount: 2,
                        builder: (context, index) {
                          if (index == 0) {
                            // value3 = 'am';

                            return ampm(
                              isitam: true,
                            );
                          } else {
                            // value3 = 'pm';

                            return ampm(isitam: false);
                          }
                        },
                      )),
                ),
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value1 < 10

                    // ignore: prefer_interpolation_to_compose_strings
                    ? '0$value1:' +
                        (value2 < 10 ? '0$value2' : '$value2') +
                        value3
                    : '$value1:${value2 < 10 ? '0$value2' : '$value2'}$value3',
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

// class value1 {}
