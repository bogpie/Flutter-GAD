import 'package:redux/redux.dart';
import 'package:tema1/src/tema07_unsplash_redux/src/actions/index.dart';
import 'package:tema1/src/tema07_unsplash_redux/src/models/index.dart';

Reducer<AppState> reducer = combineReducers(
  <Reducer<AppState>>[
    //
    TypedReducer<AppState, GetPhotosStart>(_getPhotosStart),
    TypedReducer<AppState, GetPhotosSuccessful>(_getPhotosSuccessful),
    TypedReducer<AppState, GetPhotosError>(_getPhotosError),
    TypedReducer<AppState, UpdateField>(_updateField),
    TypedReducer<AppState, UpdateQuery>(_updateQuery),
    TypedReducer<AppState, UpdateOrderBy>(_updateOrderBy),
    TypedReducer<AppState, UpdateColor>(_updateColor),
    TypedReducer<AppState, SetSelectedPhoto>(_setSelectedPhoto),
  ],
);

AppState _getPhotosStart(AppState state, GetPhotosStart action) {
  return state.rebuild((AppStateBuilder b) => b.isLoading = true);
}

AppState _getPhotosSuccessful(AppState state, GetPhotosSuccessful action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..page = b.page + 1
      ..photos.addAll(action.photos)
      ..isLoading = false;
  });
}

AppState _getPhotosError(AppState state, GetPhotosError action) {
  return state.rebuild((AppStateBuilder b) => b.isLoading = false);
}

AppState _updateField(AppState state, UpdateField action) {
  return state.rebuild((AppStateBuilder b) => b.field = action.field);
}

AppState _updateQuery(AppState state, UpdateQuery action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..photos.clear()
      ..page = 1
      ..query = action.query;
  });
}

AppState _updateOrderBy(AppState state, UpdateOrderBy action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..photos.clear()
      ..page = 1
      ..orderBy = action.orderBy;
  });
}

AppState _updateColor(AppState state, UpdateColor action) {
  return state.rebuild((AppStateBuilder b) {
    b
      ..photos.clear()
      ..page = 1
      ..color = action.color;
  });
}

AppState _setSelectedPhoto(AppState state, SetSelectedPhoto action) {
  return state.rebuild((AppStateBuilder b) {
    b.selectedPhoto = action.photoId;
  });
}
