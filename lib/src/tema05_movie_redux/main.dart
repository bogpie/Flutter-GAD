import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:tema1/src/tema05_movie_redux/src/models/movie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Movie> _movies = <Movie>[];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _getMovies();
  }

  Future<void> _getMovies() async {
    setState(() => _isLoading = true);

    const String url = 'https://yts.mx/api/v2/list_movies.json?limit=50';
    final Response response = await get(url);
    final String body = response.body;
    final List<dynamic> list = jsonDecode(body)['data']['movies'];

    print('list: $list');

    final List<Movie> movieList = list //
        .map((dynamic json) => Movie.fromJson(json))
        .toList();

    setState(() {
      _movies.addAll(movieList);
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Builder(
        builder: (BuildContext context) {
          if (_isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              crossAxisCount: 3,
            ),
            itemCount: _movies.length,
            itemBuilder: (BuildContext context, int index) {
              final Movie movie = _movies[index];
              return GridTile(
                child: Image.network(movie.mediumCoverImage),
                footer: GridTileBar(
                  title: Text(movie.title),
                  subtitle: Text(movie.genres.join(', ')),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
