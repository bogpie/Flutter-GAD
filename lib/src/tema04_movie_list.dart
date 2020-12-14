import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(MovieListApp());
}

class MovieListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class Movie {
  Movie({this.title, this.rating});

  @required
  final String title;
  @required
  final double rating;

  @override
  String toString() {
    return 'Movie{title: $title, rating: $rating;}\n';
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Movie> _movies = <Movie>[];
  double _rating = 0.0;

  Future<void> generateMovies() async {
    const String _url = 'https://yts.mx/api/v2/list_movies.json';
    final Response response = await get(_url);
    final Map<String, dynamic> _mapBody = jsonDecode(response.body);
    final List<dynamic> _moviesDetailed = _mapBody['data']['movies'];

    final List<Movie> _moviesBrief = _moviesDetailed
        .map(
          (dynamic item) => Movie(
            title: item['title'],
            rating: item['rating'] * 1.0,
          ),
        )
        .toList();

    setState(
      () {
        _movies = _moviesBrief.where((Movie element) => element.rating > _rating).toList();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movie List')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Text(' Min Rating Level: $_rating'),
                ),
                Expanded(
                  flex: 3,
                  child: Slider(
                    value: _rating,
                    min: 0.0,
                    max: 10.0,
                    onChanged: (double value) {
                      setState(
                        () {
                          _rating = double.tryParse(value.toStringAsFixed(1));
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _movies.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(_movies[index].title),
                    subtitle: Text(_movies[index].rating.toString()),
                  );
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional.topCenter,
              child: FlatButton(
                child: const Text('Generate'),
                onPressed: () {
                  generateMovies();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
