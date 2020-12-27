import 'package:tema1/src/tema06_movie_redux/src/actions/get_movies.dart';
import 'package:tema1/src/tema06_movie_redux/src/actions/set_selected_movie.dart';
import 'package:tema1/src/tema06_movie_redux/src/actions/update_Genre.dart';
import 'package:tema1/src/tema06_movie_redux/src/actions/update_order_by.dart';
import 'package:tema1/src/tema06_movie_redux/src/actions/update_quality.dart';
import 'package:tema1/src/tema06_movie_redux/src/models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  final AppStateBuilder builder = state.toBuilder();

  print('Action: $action \n\n');

  if (action is GetMoviesStart) {
    builder.isLoading = true;
  } else if (action is GetMoviesSuccessful) {
    builder
      ..movies.addAll(action.movies)
      ..isLoading = false
      ..nextPage = builder.nextPage + 1;
  } else if (action is GetMoviesError) {
    builder.isLoading = false;
  } else if (action is UpdateQuality) {
    builder
      ..movies.clear()
      ..nextPage = 1
      ..quality = action.quality;
  } else if (action is UpdateGenre) {
    builder
      ..movies.clear()
      ..nextPage = 1
      ..genre = action.genre;
  } else if (action is UpdateOrderBy) {
    builder
      ..movies.clear()
      ..nextPage = 1
      ..orderBy = action.orderBy;
  } else if (action is SetSelectedMovie) {
    builder.selectedMovie = action.movieId;
  }

  print('Old state: $state \n\n');
  final AppState newState = builder.build();
  print('New state: $newState \n\n');

  return newState;
}
