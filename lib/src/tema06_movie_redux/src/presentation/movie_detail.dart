import 'package:flutter/material.dart';
import 'package:tema1/src/tema06_movie_redux/src/containers/movie_container.dart';
import 'package:tema1/src/tema06_movie_redux/src/models/movie.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MovieContainer(
      builder: (BuildContext context, Movie movie) {
        return Scaffold(
          appBar: AppBar(
            title: Text(movie.title),
          ),
          body: Image.network(movie.largeCoverImage),
        );
      },
    );
  }
}
