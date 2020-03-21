import 'package:flutter/cupertino.dart';
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
  final List<String> title;
  final List<String> description;

  String dateTimeProvider(){
    return dateTime.year.toString()+'-'+dateTime.month.toString()+'-'+dateTime.day.toString();
  }
}
List<Schedule> scheduleList=<Schedule>[
  Schedule(

    dateTime: DateTime.now(),
    title: <String>['Wizards vs. Celitics', 'Pacers vs. Heat', 'Raptors vs. Celitics'],
    description: <String>['TIME TO BE DECIDED','TIME TO BE DECIDED','TIME TO BE DECIDED'],
  ),
  Schedule(
      dateTime: DateTime.now().add(const Duration(days: 1)),
    title: <String>['Hornets vs. Lakers', 'Knicks vs. Warriors', 'Suns vs. Mavericks'],
    description: <String>['TIME TO BE DECIDED','TIME TO BE DECIDED','TIME TO BE DECIDED'],
  ),
  Schedule(
      dateTime: DateTime.now().add(const Duration(days: 2)),
    title: <String>['Pistons vs. Lakers', 'Raptors vs Nuggets', 'Spurrs vs. Jazz'],
    description: <String>['TIME TO BE DECIDED','TIME TO BE DECIDED','TIME TO BE DECIDED'],
  ),
  Schedule(
      dateTime: DateTime.now().add(const Duration(days: 4)),
    title: <String>['Raptors vs. Lakers', 'Pelicians vs. Grizzlies', 'Caveliers vs. Kings'],
    description: <String>['TIME TO BE DECIDED','TIME TO BE DECIDED','TIME TO BE DECIDED'],
  ),
  Schedule(
      dateTime: DateTime.now().add(const Duration(days: 10)),
    title: <String>['Hornets vs. Heat', 'Nuggets vs. Thunder', 'Clippers vs. Pacers'],
    description: <String>['TIME TO BE DECIDED','TIME TO BE DECIDED','TIME TO BE DECIDED'],
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
