import 'package:flutter/material.dart';
import './keep_alive.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keep page state',
      theme: ThemeData(
        primaryColor: Colors.lightBlue
      ),
      home: KeepAliveState(),
    );
  }
}

class KeepAliveState extends StatefulWidget {
  KeepAliveState({Key key}) : super(key: key);

  @override
  _KeepAliveStateState createState() => _KeepAliveStateState();
}

class _KeepAliveStateState extends State<KeepAliveState> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keep Alive Demo'),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike))
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          MyHomePage('Car Count'),
          MyHomePage('Bus Count'),
          MyHomePage('Bike Count')
        ],
      ),
    );
  }
}