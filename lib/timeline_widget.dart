library timeline_widget;

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:timeline_widget/utils/toast.dart';

enum TimeLineAlignment { left, right }
enum ToastPosition { CENTER, BOTTOM }

typedef void OnDateTapScroll(DateTime date);

class TimelineItem {
  const TimelineItem({
    Key key,
    this.timelineTitle,
    this.timeLineDescription,
    this.separator,
  });

  final Widget timelineTitle;
  final Widget timeLineDescription;
  final SizedBox separator;
}

class TimeLine extends StatefulWidget {
  const TimeLine({
    Key key,
    this.events,
    this.lineColor = Colors.black,
    this.lineWidth = 1,
    @required this.timelineItems,
    this.eventDescription,
    this.scrollCurve = Curves.linear,
    this.timelineAlignment = TimeLineAlignment.left,
    this.showCalendar = true,
    this.calendar,
    this.onDateTapScroll,
    this.noMatchMessage = 'No matches found for chosen date',
    this.toastPosition = ToastPosition.BOTTOM,
    this.toastDuration = 3,
    this.toastBackgroundColor = Colors.blue,
    this.toastTextColor = Colors.white,
  }) : super(key: key);

  final List<dynamic> events;
  final Color lineColor;
  final double lineWidth;
  final List<TimelineItem> timelineItems;
  final Widget eventDescription;
  final Curve scrollCurve;
  final TimeLineAlignment timelineAlignment;
  final bool showCalendar;
  final Widget calendar;
  final OnDateTapScroll onDateTapScroll;
  final String noMatchMessage;
  final ToastPosition toastPosition;
  final int toastDuration;
  final Color toastBackgroundColor;
  final Color toastTextColor;

  @override
  _TimeLineState createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  ScrollController _scrollController;
  CalendarController _calendarController;

//  void _computeScroll(List<String> scrollClasses, DateTime currDate) {
//    if (widget.onDateTapScroll != null)
//      widget.onDateTapScroll(currDate);
//    else {
//      int found = 0;
//      for (dynamic date in widget.events) {
//        if (date.date.day == currDate.day &&
//            date.date.month == currDate.month) {
//          found = scrollClasses.indexWhere(
//                  (ClassDate dates) => dates.date.compareTo(date.date) == 0) +
//              1;
//          break;
//        } else
//          found = 0;
//      }
//      if (found > 0) {
//        int classesCount = 0;
//        for (int i = 0; i < found - 1; i++) {
//          classesCount += scrollClasses[i].fitnessClasses.length;
//          classesCount += scrollClasses[i].fitnessSessions.length;
//          classesCount += scrollClasses[i].kmaSessions.length;
//        }
//        final int newScrollPosition = 150 * classesCount;
//        _scrollController.animateTo(
//          double.parse(newScrollPosition.toString()),
//          curve: Curves.easeInToLinear,
//          duration: const Duration(milliseconds: 500),
//        );
//      } else {
//        Toast.show(
//          widget.noMatchMessage,
//          context,
//          backgroundRadius: 14,
//          gravity: widget.toastPosition == ToastPosition.BOTTOM
//              ? Toast.BOTTOM
//              : Toast.CENTER,
//          duration: widget.toastDuration,
//          backgroundColor: widget.toastBackgroundColor,
//          textColor: widget.toastTextColor,
//        );
//      }
//    }
//  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _calendarController = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        widget.showCalendar
            ? widget.calendar != null
                ? widget.calendar
                : Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: TableCalendar(
                      initialCalendarFormat: CalendarFormat.week,
                      calendarController: _calendarController,
                      calendarStyle: CalendarStyle(
                        todayColor: Colors.redAccent,
                        highlightToday: true,
                      ),
                    ),
                  )
            : Container(),
        Expanded(
          child: Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: 50,
                    child: Center(
                      child: Container(
                        width: 1,
                        height: 500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: widget.timelineItems.map((TimelineItem item) {
                    return Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              item.timelineTitle,
                              item.separator,
                              item.timeLineDescription,
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
