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
  final List<Movie> _movies = <Movie>[];
  int _minimumRatingInt = 0;
  double _sliderValue = 0;
  int _page = 1;

  Future<void> generateMovies({bool isLoadMore}) async {
    if (isLoadMore == false) {
      _page = 1;
      _movies.clear();
    } else {
      ++_page;
    }
    final String _url = 'https://yts.mx/api/v2/list_movies.json?limit=50&minimum_rating=$_minimumRatingInt&page=$_page';
    final Response response = await get(_url);
    final Map<String, dynamic> _mapBody = jsonDecode(response.body);
    final List<dynamic> _moviesDetailed = _mapBody['data']['movies'];

    if (_moviesDetailed != null) {
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
          _movies.addAll(_moviesBrief);
        },
      );
    } else {
      --_page;
      showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Info'),
            content: const Text('No more movies to load!'),
            actions: <Widget>[
              FlatButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        },
      );
    }
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
                  child: Text(' Min Rating Level: $_minimumRatingInt'),
                ),
                Expanded(
                  flex: 3,
                  child: Slider(
                    value: _sliderValue,
                    min: 0.0,
                    max: 9.0,
                    onChanged: (double value) {
                      setState(
                        () {
                          _sliderValue = value;
                          _minimumRatingInt = value.toInt();
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _movies.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  if (_movies.isNotEmpty) {
                    if (index < _movies.length) {
                      return ListTile(
                        title: Text(_movies[index].title),
                        subtitle: Text(_movies[index].rating.toString()),
                      );
                    } else {
                      return MaterialButton(
                        onPressed: () {
                          generateMovies(isLoadMore: true);
                        },
                        child: const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Load More',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      );
                    }
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: MaterialButton(
                child: const Text(
                  'Create List',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  generateMovies(isLoadMore: false);
                },
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
