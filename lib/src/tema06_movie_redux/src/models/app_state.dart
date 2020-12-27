library app_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:tema1/src/tema06_movie_redux/src/models/movie.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  factory AppState.initialState() {
    final AppStateBuilder builder = AppStateBuilder();
    builder
      ..isLoading = true
      ..nextPage = 1
      ..orderBy = 'desc';
    return builder.build();
  }

  AppState._();

  BuiltList<Movie> get movies;

  int get nextPage;

  @nullable
  String get quality;

  @nullable
  String get genre;

  String get orderBy;

  bool get isLoading;

  @nullable
  int get selectedMovie;
}
