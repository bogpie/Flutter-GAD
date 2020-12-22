// business logic

import 'dart:convert';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:tema1/src/tema05_movie_redux/src/models/movie.dart';

class YtsApi {
  const YtsApi({@required Client client})
      : assert(client != null),
        _client = client;

  final Client _client;


  Future<List<Movie>> getMovies() async {

    const String url = 'https://yts.mx/api/v2/list_movies.json?limit=50';
    final Response response = await get(url);
    final String body = response.body;
    final List<dynamic> list = jsonDecode(body)['data']['movies'];

    print('list: $list');

    return list //
        .map((dynamic json) => Movie.fromJson(json))
        .toList();
  }

}