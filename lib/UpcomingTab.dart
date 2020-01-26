import 'package:flutter/material.dart';
import 'time_line_left.dart';
import 'calendar.dart';

class showUpcoming extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final bool swapTimeLine;

  showUpcoming( {
    this.width=411.0,
    this.height=700.00,
    this.color=Colors.green,
    this.swapTimeLine=false,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          new Calendar(),
          new TimeLineLeft()//TimeLineLeft(this.width, this.height, this.color, this.swapTimeLine),
        ],
      ),
    );
  }
}