import 'package:flutter/material.dart';
import 'package:simple_http_request/movie.dart';

class GridList extends StatelessWidget {

  final List<Movie> movies;

  const GridList(this.movies, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this would produce 2 rows.
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      // Generate movies.length Widgets that display their index in the List
      children: List.generate(movies.length, (index) {
        return Center(
          child: Container(
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.grey, width: 3.0),
            ),
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              // leading: Text(movies[index].title),
              title: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(movies[index].title, style: Theme.of(context).textTheme.subtitle)
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(2.0),
                    // width: 280,
                    // height: 300,
                    width: 60,
                    height: 80,
                    child: Image.network(movies[index].poster),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text("Years: " + movies[index].year)
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text("imdbID: " + movies[index].imdbID)
                  )
                ],
              ),
              contentPadding: EdgeInsets.all(8.0)
            ),
          ),
        );
      }),
    );
  }
}