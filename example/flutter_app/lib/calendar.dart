import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      elevation: 10,
      child: TableCalendar(
        initialCalendarFormat: CalendarFormat.week,
        calendarController: _controller,
        calendarStyle:
            CalendarStyle(todayColor: Colors.redAccent, highlightToday: true),
      ),
    );
  }
}
