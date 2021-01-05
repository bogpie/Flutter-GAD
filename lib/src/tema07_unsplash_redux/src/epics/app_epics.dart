import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:tema1/src/tema07_unsplash_redux/src/actions/index.dart';
import 'package:tema1/src/tema07_unsplash_redux/src/data/unsplash_api.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tema1/src/tema07_unsplash_redux/src/models/index.dart';

class AppEpics {
  const AppEpics({@required UnsplashApi unsplashApi})
      : assert(unsplashApi != null),
        _unsplashApi = unsplashApi;

  final UnsplashApi _unsplashApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetPhotosStart>(_getPhotosStart),
    ]);
  }

  Stream<dynamic> _getPhotosStart(Stream<GetPhotosStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetPhotosStart event) => _unsplashApi.getPhotos(
              store.state.page,
              store.state.query,
              store.state.orderBy,
              store.state.color,
            ))
        .map<dynamic>((List<Photo> photos) => GetPhotosSuccessful(photos))
        .onErrorReturnWith((dynamic error) => GetPhotosError(error));
  }

}
