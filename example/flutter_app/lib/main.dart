import 'package:flutter/material.dart';
import 'package:timeline_widget/timeline_widget.dart';

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
        timelineItems: <TimelineItem>[
          TimelineItem(
            timelineTitle: CircleAvatar(
              child: const Text('hello'),
              backgroundColor: Colors.green,
            ),
            separator: const SizedBox(
              width: 10,
            ),
            timeLineDescription: Expanded(
              child: Card(
                elevation: 4,
                child: Container(
                  height: 100,
                  child: Center(
                    child: const Text('iam the child'),
                  ),
                ),
              ),
            ),
          ),
          TimelineItem(
            timelineTitle: CircleAvatar(
              child: const Text('hello'),
              backgroundColor: Colors.green,
            ),
            separator: const SizedBox(
              width: 10,
            ),
            timeLineDescription: Expanded(
              child: Card(
                elevation: 4,
                child: Container(
                  height: 100,
                  child: Center(
                    child: const Text('iam the child'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
