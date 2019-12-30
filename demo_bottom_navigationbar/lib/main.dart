import 'package:flutter/material.dart';
import './BottomNavigationWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo Bottom Navigation",
      theme: ThemeData.light(),
      home: BottomNavigationWidget()
    );
  }
}