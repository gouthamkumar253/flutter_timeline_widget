import 'package:flutter/material.dart';
import 'dart:ui';

class TimeLineLeft extends StatefulWidget {
  final double width, height;
  final Color color;
  final bool swapTimeLine;

  TimeLineLeft({
    this.width = 411.0,
    this.height = 700.0,
    this.color = Colors.green,
    this.swapTimeLine = true,
  });

  @override
  _TimeLineLeftState createState() => _TimeLineLeftState();
}

class _TimeLineLeftState extends State<TimeLineLeft> {
  var c = 9;

  Map schedule = <String, dynamic>{
    'date': '2020-01-07',
    'fitness_classes': [
      {
        'id': 49,
        'name': 'Poiuytrewq',
        'description': 'Classs for fetch class session checking',
        'start_date': '2020-01-07'
      }
    ]
  };

  Widget build(BuildContext context) {
    //widget.width=MediaQuery.of(context).size.width;
    // print(MediaQuery.of(context).size.height);
    print(widget.width);
    return Container(
      height: widget.height,
      width: widget.width,
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: myGridView(),
    );
  }

  Widget circle(int count) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: widget.height / 6 - widget.width / 9, top: 0),
      child: CircleAvatar(
        child: Text(
          '$count',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: widget.color,
        radius: widget.width / 18,
      ),
    );
  }

  Widget line(int count) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: widget.width / 18),
        child: Container(
          width: 2,
          height: (count != c) ? widget.height / 6 : 0,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget event() {
    return Container(
      height: widget.height / 6,
      child: Card(
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ListTile(
                title: Text(schedule['Oct1']['Details']),
                subtitle: Text(schedule['Oct1']['Time']),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 17.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Text('Oct 2019'), Icon(Icons.group_add)],
                ),
              )
            ],
          )),
    );
  }

  Widget myGridView() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: c,
        itemBuilder: (context, index) {
          return Container(
              height: widget.height / 6,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    (!widget.swapTimeLine)
                        ? Container(
                            width: widget.width / 8 + 2,
                            height: widget.height / 6,
                            child: Stack(children: <Widget>[
                              line(index + 1),
                              circle(index + 1)
                            ]))
                        : Expanded(child: event()),
                    (!widget.swapTimeLine)
                        ? Expanded(child: event())
                        : Container(
                            width: widget.width / 8 + 2,
                            height: widget.height / 6,
                            // padding: const EdgeInsets.only(left: 20),
                            child: Stack(children: <Widget>[
                              line(index + 1),
                              circle(index + 1)
                            ])),
                  ]));
        });
  }
}
