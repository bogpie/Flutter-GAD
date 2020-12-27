import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:tema1/src/tema06_movie_redux/src/models/app_state.dart';
import 'package:tema1/src/tema06_movie_redux/src/models/movie.dart';

class MovieContainer extends StatelessWidget {
  const MovieContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<Movie> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Movie>(
      converter: (Store<AppState> store) {
        return store.state.movies.firstWhere((Movie movie) => movie.id == store.state.selectedMovie);
      },
      builder: builder,
    );
  }
}
