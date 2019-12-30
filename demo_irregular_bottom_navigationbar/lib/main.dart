import 'package:flutter/material.dart';
import './bottom_app_bar_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Irregular Bottom Navigation-bar',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: BottomAppBarDemo(),
    );
  }
}