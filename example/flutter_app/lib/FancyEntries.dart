import 'package:timeline_widget/timeline_widget.dart';
import 'package:flutter/material.dart';


List<TimelineItem> t = [
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
