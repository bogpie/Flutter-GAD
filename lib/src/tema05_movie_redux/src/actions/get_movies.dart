import 'package:tema1/src/tema05_movie_redux/src/models/movie.dart';

class GetMovies{
  const GetMovies();
}

class GetMoviesSuccessful {
  const GetMoviesSuccessful(this.movies);
  final List <Movie> movies;
}

class GetMoviesError {
  const GetMoviesError(this.error);
  final dynamic error;
}