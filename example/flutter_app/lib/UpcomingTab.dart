import 'package:flutter/material.dart';
import 'calendar.dart';

import 'time_line_left.dart';

class ShowUpcoming extends StatelessWidget {
  const ShowUpcoming({
    this.width = 411.0,
    this.height = 700.00,
    this.color = Colors.green,
    this.swapTimeLine = false,
  });

  final double width;
  final double height;
  final Color color;
  final bool swapTimeLine;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          new Calendar(),
          const TimeLineLeft()
          //TimeLineLeft(this.width, this.height, this.color, this.swapTimeLine),
        ],
      ),
    );
  }
}
