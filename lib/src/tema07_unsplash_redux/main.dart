import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tema1/src/tema07_unsplash_redux/src/actions/index.dart';
import 'package:tema1/src/tema07_unsplash_redux/src/data/unsplash_api.dart';
import 'package:tema1/src/tema07_unsplash_redux/src/epics/app_epics.dart';
import 'package:tema1/src/tema07_unsplash_redux/src/models/index.dart';
import 'package:tema1/src/tema07_unsplash_redux/src/presentation/home_page.dart';
import 'package:tema1/src/tema07_unsplash_redux/src/presentation/photo_detail.dart';
import 'package:tema1/src/tema07_unsplash_redux/src/reducer/reducer.dart';

void main() {
  final Client client = Client();
  final UnsplashApi unsplashApi = UnsplashApi(client: client);
  final AppEpics appEpics = AppEpics(unsplashApi: unsplashApi);

  final AppState initialState = AppState.initialState();

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpics.epics),
    ],
  );

  store.dispatch(const GetPhotos());
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, @required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: const HomePage(),
        routes: <String, WidgetBuilder>{
          '/photoDetail': (BuildContext context) => const PhotoDetail(),
        },
      ),
    );
  }
}
