import 'package:flutter/material.dart';
import './pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Page Route Animaion',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: FirstPage(),
    );
  }
}