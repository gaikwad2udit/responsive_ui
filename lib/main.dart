import 'package:clone_app/screens/homepage/homepage.dart';
import 'package:clone_app/screens/resultpage/resultpage.dart';
import 'package:clone_app/scroll.dart';
import 'package:clone_app/chart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: homepage(),
        //initialRoute: mainscreen.routename,
        routes: {
          resultpage.routename: (_) => resultpage(),
          testing.routenaem: (_) => testing(),
          MyHomePage.routenmae: (_) => MyHomePage(),
        });
  }
}
