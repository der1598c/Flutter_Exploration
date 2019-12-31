import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:simple_http_request/movie.dart';

class Webservice {
  
  Future<List<Movie>> loadMovies(String keyWord) async {

    String apiKey = "&apikey=bdc117f1";
    String url = "http://www.omdbapi.com/?s=";
    final response = await http.get(url + keyWord + apiKey);

    if(response.statusCode == 200) {
      print(response.statusCode);
      final json = jsonDecode(response.body);
      final Iterable list = json["Search"];
      return list.map((item) => Movie.fromJSON(item)).toList();
    } else {
      throw Exception('Error loading movies...');
    }

  }
}