import 'package:tema1/src/tema05_movie_redux/src/actions/get_movies.dart';
import 'package:tema1/src/tema05_movie_redux/src/models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  final AppStateBuilder builder = state.toBuilder();

  if (action is GetMovies) {
    builder.isLoading = true;
  } else if (action is GetMoviesSuccessful) {
    builder.movies.addAll(action.movies);
    builder.isLoading = false;
  } else if (action is GetMoviesError) {
    builder.isLoading = false;
  }

  return builder.build();
}
