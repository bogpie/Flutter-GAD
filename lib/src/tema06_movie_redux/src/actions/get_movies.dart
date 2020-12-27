library get_movies;

import 'package:tema1/src/tema06_movie_redux/src/models/movie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_movies.freezed.dart';

@freezed
abstract class GetMovies with _$GetMovies {
  const factory GetMovies() = GetMoviesStart;

  const factory GetMovies.successful(List<Movie> movies) = GetMoviesSuccessful;

  const factory GetMovies.error(dynamic error) = GetMoviesError;
}
