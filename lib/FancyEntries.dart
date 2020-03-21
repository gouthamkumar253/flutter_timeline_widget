import 'package:timeline_widget/timeline_widget.dart';
import 'package:flutter/material.dart';

class Schedule{
  Schedule({
    this.dateTime,
    this.title,
    this.description,
});
  GlobalKey key;
  final DateTime dateTime;
  final String title;
  final String description;
}
List<Schedule> scheduleList=<Schedule>[
  Schedule(

    dateTime: DateTime.now(),
    title: "Wizards vs. Celitics",
    description: "TIME TO BE DECIDED"
  ),
  Schedule(
      dateTime: DateTime.now().add(Duration(days: 1)),
      title: "Wizards vs. Celitics",
      description: "TIME TO BE DECIDED"
  ),
  Schedule(
      dateTime: DateTime.now().add(Duration(days: 2)),
      title: "Wizards vs. Celitics",
      description: "TIME TO BE DECIDED"
  ),
  Schedule(
      dateTime: DateTime.now().add(Duration(days: 4)),
      title: "Wizards vs. Celitics",
      description: "TIME TO BE DECIDED"
  ),
  Schedule(
      dateTime: DateTime.now().add(Duration(days: 10)),
      title: "Wizards vs. Celitics",
      description: "TIME TO BE DECIDED"
  ),
];
List<TimelineItem> t = [
  TimelineItem(
    timelineTitle: CircleAvatar(
      radius: 30,
      child: const Text('hello'),
      backgroundColor: Colors.blue[100],
    ),
    separator: const SizedBox(
      width: 10,
    ),
    timeLineDescription: Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Card(
            elevation: 4,
            child: Container(
              height: 100,
              child: Center(
                child: const Text('iam the child'),
              ),
            ),
          ),
          Card(
              elevation: 4,
              child: Container(
                height: 100,
                child: Center(
                  child: const Text('iam the child'),
                ),
              )),
          Card(
              elevation: 4,
              child: Container(
                height: 100,
                child: Center(
                  child: const Text('iam the child'),
                ),
              )),
        ],
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
      child: Column(
        children: <Widget>[
          Card(
              elevation: 4,
              child: Container(
                height: 100,
                child: Center(
                  child: const Text('iam the child'),
                ),
              )),
          Card(
              elevation: 4,
              child: Container(
                height: 100,
                child: Center(
                  child: const Text('iam the child'),
                ),
              )),
          Card(
            elevation: 4,
            child: Container(
              height: 100,
              child: Center(
                child: const Text('iam the child'),
              ),
            ),
          ),
        ],
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
      child: Column(
        children: <Widget>[
          Card(
              elevation: 4,
              child: Container(
                height: 100,
                child: Center(
                  child: const Text('iam the child'),
                ),
              )),
          Card(
              elevation: 4,
              child: Container(
                height: 100,
                child: Center(
                  child: const Text('iam the child'),
                ),
              )),
          Card(
            elevation: 4,
            child: Container(
              height: 100,
              child: Center(
                child: const Text('iam the child'),
              ),
            ),
          ),
        ],
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
      child: Column(
        children: <Widget>[
          Card(
              elevation: 4,
              child: Container(
                height: 100,
                child: Center(
                  child: const Text('iam the child'),
                ),
              )),
          Card(
              elevation: 4,
              child: Container(
                height: 100,
                child: Center(
                  child: const Text('iam the child'),
                ),
              )),
          Card(
            elevation: 4,
            child: Container(
              height: 100,
              child: Center(
                child: const Text('iam the child'),
              ),
            ),
          ),
        ],
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
      child: Column(
        children: <Widget>[
          Card(
              elevation: 4,
              child: Container(
                height: 100,
                child: Center(
                  child: const Text('iam the child'),
                ),
              )),
          Card(
              elevation: 4,
              child: Container(
                height: 100,
                child: Center(
                  child: const Text('iam the child'),
                ),
              )),
          Card(
            elevation: 4,
            child: Container(
              height: 100,
              child: Center(
                child: const Text('iam the child'),
              ),
            ),
          ),
        ],
      ),
    ),
  )
];
