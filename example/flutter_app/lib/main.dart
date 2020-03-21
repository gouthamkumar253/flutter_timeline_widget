import 'package:flutter/cupertino.dart';
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
  List<GlobalKey> keys=new List(scheduleList.length);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TimeLine(
        betTimeLineItems: 50,
        containerHeight: t.length*MediaQuery.of(context).size.height,
        timelineItems: List<TimelineItem>.generate(scheduleList.length, (index) {
      return TimelineItem(
        key: keys[index],
        timeLineDescription: Expanded(
          child: Column(
            children: List<Card>.generate(scheduleList[index].title.length,(index1){
              return Card(
                  elevation: 4,
                  child: Container(
                    height: 100,
                    child: ListTile(
                      leading: Icon(Icons.account_circle, color: Colors.redAccent,size: 30,),
                      trailing: Icon(Icons.account_circle, color: Colors.greenAccent,size:30),
                      title: Text(scheduleList[index].title[index1],style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.blueAccent[100]),),
                      subtitle: Text(scheduleList[index].description[index1]),
                    ),
                  ));

            }).toList()
            ,
          ),
        ),
        timelineTitle: CircleAvatar(
          radius: 30,
          child: Text(scheduleList[index].dateTime.day.toString()+'/'+scheduleList[index].dateTime.month.toString(),style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
          backgroundColor: Colors.blue[100],
        ),
        separator: const SizedBox(
          width: 30,
        ),

      );
    }).toList()
    )
    );
  }
}