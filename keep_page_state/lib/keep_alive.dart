import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String tabTitle;

  // MyHomePage({Key key}) : super(key: key);
  MyHomePage(this.tabTitle, {Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState(tabTitle);
}

class _MyHomePageState extends State<MyHomePage> with AutomaticKeepAliveClientMixin{
  int _counter = 0;
  String _tabTitle;

  _MyHomePageState(this._tabTitle) : super();

  @override
  bool get wantKeepAlive => true;

  void _incrementCounter() {
    setState(() {
      _counter ++;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(_tabTitle),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_tabTitle),
            Text('Current count is:'),
            Text('$_counter', style: Theme.of(context).textTheme.display1,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment $_tabTitle',
        child: Icon(Icons.add),
      ),
    );
  }
}