import 'package:flutter/material.dart';
import 'UpcomingTab.dart';
import 'calendar.dart';

class TimeLineWidget extends StatelessWidget {
  const TimeLineWidget({
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            tabs: const <Tab>[
              const Tab(
                text: 'Upcoming',
              ),
              Tab(text: 'Completed')
            ],
          ),
          title: const Text('Timeline'),
        ),
        body: TabBarView(
          children: <Widget>[
            upcoming(),
            completed(),
          ],
        ),
      ),
    );
  }

  Widget upcoming() {
    return const ShowUpcoming();
  }

  Widget completed() {
    return  Calendar();
  }
}
