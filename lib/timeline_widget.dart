library timeline_widget;

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:timeline_widget/utils/toast.dart';

enum TimeLineAlignment { left, right }
enum ToastPosition { CENTER, BOTTOM }
enum ChainType { DOTTED, DASHED, SOLID }

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
    this.curatedLineDesign = const CuratedLineDesign(
      chainType: ChainType.DASHED,
      dashedLineHeight: 10.0,
      circleRadius: 4.0,
      height: 100.0,
      lineWidth: 1.0,
      color: Colors.grey,
      space: 20.0,
    ),
    @required this.containerHeight ,
    this.showCalendar = true,
    this.calendar,
    this.onDateTapScroll,
    this.noMatchMessage = 'No matches found for chosen date',
    this.toastPosition = ToastPosition.BOTTOM,
    this.toastDuration = 3,
    this.toastBackgroundColor = Colors.blue,
    this.toastTextColor = Colors.white,
    this.betTimeLineItems=50.0,
  }) : super(key: key);

  final List<dynamic> events;
  final double betTimeLineItems;
  final Color lineColor;
  final double lineWidth;
  final List<TimelineItem> timelineItems;
  final CuratedLineDesign curatedLineDesign;
  final double containerHeight;
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
    return Container(
      child: Column(
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
            child: ListView(
              children: <Widget>[
                Container(

                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 0,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: 50,
                          child: Center(
                            child: CuratedLineDesign(
                              height:widget.containerHeight,
                              dashedLineHeight:
                                  widget.curatedLineDesign.dashedLineHeight,
                              chainType: widget.curatedLineDesign.chainType,
                              circleRadius:
                                  widget.curatedLineDesign.circleRadius,
                              space: widget.curatedLineDesign.space,
                              lineWidth: widget.curatedLineDesign.lineWidth,
                              color: widget.curatedLineDesign.color,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: widget.timelineItems.map((TimelineItem item){
                          return Column(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    item.timelineTitle,
                                    item.separator,
                                    item.timeLineDescription,
                                  ],
                                ),
                              ),
                              SizedBox(
                                //separator between two children
                                height: widget.betTimeLineItems ,
                              ),
                            ],
                          );
                        }).toList(),
                      ),
        ]),


                  ),

                ],
            ),
          ),

          ]),
      );
  }
}

class CuratedLineDesign extends StatelessWidget {
  final ChainType chainType; //type of chaining- enumerator ChainType
  final double height; //total container height
  final double dashedLineHeight; //height of each dash
  final double circleRadius; //radius of each dot
  final Color color; //color of the chain
  final double space; //space between any two dots or dashes
  final double lineWidth; //Solid Line or Dashed Line width

  const CuratedLineDesign({
    this.chainType,
    this.height,
    this.dashedLineHeight,
    this.lineWidth,
    this.circleRadius,
    this.color,
    this.space,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (chainType == ChainType.DASHED)
        ? dashDesign()
        : (chainType == ChainType.SOLID)
            ? solidDesign()
            : (chainType == ChainType.DOTTED) ? goliDesign() : null;
  }

  Widget dashDesign() {
    List<Widget> dashes = new List<Widget>();
    int x = (height / (dashedLineHeight + space)).floor();
    for (int i = 0; i < x; i++)
      dashes.add(Column(
        children: <Widget>[
          Container(
            width: lineWidth,
            height: dashedLineHeight,
            color: color,
          ),
          Container(
            width: lineWidth,
            height: space,
          )
        ],
      ));
    (height - (dashes.length * (dashedLineHeight + space)) >= dashedLineHeight)
        ? dashes.add(Container(
            width: lineWidth,
            height: dashedLineHeight,
            color: color,
          ))
        : dashes.add(Container(
            width: lineWidth,
            height: height - dashes.length * (dashedLineHeight + space),
            color: color,
          ));
    return Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: dashes);
  }

  Widget goliDesign() {
    List<Widget> golis = new List<Widget>();
    int tempHeight = (height / (circleRadius * 2 + space)).floor();
    for (int i = 0; i < tempHeight; i++)
      golis.add(Column(
        children: <Widget>[
          CircleAvatar(
            radius: circleRadius,
            backgroundColor: color,
          ),
          Container(
            height: space,
          )
        ],
      ));
    if (height - ((circleRadius * 2 + space) * golis.length) >=
        circleRadius * 2)
      golis.add(CircleAvatar(
        radius: circleRadius,
        backgroundColor: color,
      ));
    return Column(
      children: golis,
    );
  }

  Widget solidDesign() {
    return Container(
      //line
      width: lineWidth,
      height: height,
      color: Colors.black,
    );
  }
}
