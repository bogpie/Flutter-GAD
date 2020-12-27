import 'package:redux/redux.dart';
import 'package:meta/meta.dart';
import 'package:tema1/src/tema06_movie_redux/src/actions/get_movies.dart';
import 'package:tema1/src/tema06_movie_redux/src/data/yts_api.dart';
import 'package:tema1/src/tema06_movie_redux/src/models/app_state.dart';
import 'package:tema1/src/tema06_movie_redux/src/models/movie.dart';

class AppMiddleware {
  const AppMiddleware({@required YtsApi ytsApi})
      : assert(ytsApi != null),
        _ytsApi = ytsApi;

  final YtsApi _ytsApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      _getMovies,
    ];
  }

  Future<void> _getMovies(Store<AppState> store, dynamic action, NextDispatcher next) async {
    //
    next(action);
    if (action is GetMoviesStart) {
      try {
        final List<Movie> movies = await _ytsApi.getMovies(
          store.state.nextPage,
          store.state.quality,
          store.state.genre,
          store.state.orderBy,
        );

        final GetMoviesSuccessful successful = GetMovies.successful(movies);
        store.dispatch(successful);
      } catch (e) {
        final GetMoviesError error = GetMovies.error(e);
        store.dispatch(error);
      }
    }
  }
}
