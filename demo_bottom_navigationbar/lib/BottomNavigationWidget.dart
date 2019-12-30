import 'package:flutter/material.dart';

import './Pages/HomeScreen.dart';
import './Pages/PagesScreen.dart';
import './Pages/EmailScreen.dart';
import './Pages/AirplayScreen.dart';

class BottomNavigationWidget extends StatefulWidget {
  BottomNavigationWidget({Key key}) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  
  final _BottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> pageList = List();

  @override
  void initState() { 
    super.initState();
    pageList
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(AirplayScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _BottomNavigationColor,
            ),
            title:  Text(
              'Home',
              style:  TextStyle(color: _BottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _BottomNavigationColor,
            ),
            title:  Text(
              'Email',
              style:  TextStyle(color: _BottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: _BottomNavigationColor,
            ),
            title:  Text(
              'Pages',
              style:  TextStyle(color: _BottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: _BottomNavigationColor,
            ),
            title:  Text(
              'Airplay',
              style:  TextStyle(color: _BottomNavigationColor),
            )
          )
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}