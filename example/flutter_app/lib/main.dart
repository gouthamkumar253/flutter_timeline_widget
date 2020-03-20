import 'package:flutter/material.dart';
import 'package:timeline_widget/timeline_widget.dart';
import 'FancyEntries.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timeline',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TimeLine(
        betTimeLineItems: 50,
        containerHeight: MediaQuery.of(context).size.height,
        timelineItems: t.map((TimelineItem item) {
      return TimelineItem(
        timeLineDescription: item.timeLineDescription,
        timelineTitle: item.timelineTitle,
        separator: item.separator,
      );
    }).toList()
    )
    );
  }
}