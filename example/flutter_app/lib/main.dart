import 'package:flutter/material.dart';
import 'TimelineWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Widget build(BuildContext context){
   return MaterialApp(
     title: 'Timeline',
     home: Scaffold(
        body:new TimeLineWidget(),
       ),
     );
  }
}
