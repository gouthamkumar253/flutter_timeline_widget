import 'package:flutter/material.dart';
import 'calendar.dart';
import 'UpcomingTab.dart';

class TimeLineWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final bool swapTimeLine;

  TimeLineWidget({
    this.width=411.0,
    this.height=700.00,
    this.color=Colors.green,
    this.swapTimeLine=false,
  });

  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              bottom: TabBar(
                  labelStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  tabs: [
                    Tab( text:"Upcoming", ),
                    Tab(text: "Completed")
                  ]
              ),
              title:Text("Timeline")),
          body: TabBarView(
            children: <Widget>[
              Upcoming(),
              Completed()
              ,
            ]
            ,
          )
          ,
        )
    );
  }


  Widget Upcoming(){
    return new showUpcoming( );
  }

  Widget Completed(){
    return new Calendar();
  }
}
