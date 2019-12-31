

class Movie {
  final String title;
  final String poster;
  final String year;
  final String imdbID;

  Movie({this.title, this.poster, this.year, this.imdbID});

  factory Movie.fromJSON(Map<String, dynamic> json) {
    return Movie(title: json["Title"], poster: json["Poster"], year: json["Year"], imdbID: json["imdbID"]);
  }

}