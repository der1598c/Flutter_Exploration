import 'package:flutter/material.dart';
import 'package:simple_http_request/grid_list.dart';
import 'package:simple_http_request/movie.dart';
import 'package:simple_http_request/webservice.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  List<Movie> _movies = List<Movie>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadMovies('star');
  }

  void _loadMovies(String keyWord) async {
    final results = await Webservice().loadMovies(keyWord);
    setState(() {
      _movies = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Movies')),
        body: GridList(_movies)
      )
    );
  }
}