import 'package:redux/redux.dart';
import 'package:meta/meta.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/actions/get_photos.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/data/unsplash_api.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/models/app_state.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/models/photo.dart';

class AppMiddleware {
  const AppMiddleware({@required UnsplashApi unsplashApi})
      : assert(unsplashApi != null),
        _unsplashApi = unsplashApi;

  final UnsplashApi _unsplashApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      _getPhotos,
    ];
  }

  Future<void> _getPhotos(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);

    if (action is GetPhotosStart) {
      try {
        final List<Photo> photos = await _unsplashApi.getPhotos(
          store.state.page,
          store.state.query,
          store.state.orderBy,
          store.state.color,
        );
        final GetPhotosSuccessful successful = GetPhotos.successful(photos);
        store.dispatch(successful);
      } catch (e) {
        final GetPhotosError error = GetPhotos.error(e);
        store.dispatch(error);
      }
    }
  }
}
