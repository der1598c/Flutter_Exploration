import 'package:flutter/material.dart';
import './costom_route_builder.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('First Page', style: TextStyle(fontSize: 36.0),),
        backgroundColor: Colors.blue,
        elevation: 0.0, //default value is 4.0
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: (){
            Navigator.of(context).push(
              // MaterialPageRoute(builder: (BuildContext context){ return SecondPage();})
              CustomRouteBuilder(SecondPage())
              );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text('Second Page', style: TextStyle(fontSize: 36.0),),
        backgroundColor: Colors.yellow,
        leading: Container(),
        elevation: 0.0, //default value is 4.0
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}