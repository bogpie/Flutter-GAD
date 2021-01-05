import 'package:tema1/src/tema06_unsplash_redux/src/actions/get_photos.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/actions/set_selected_photo.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/actions/update_color.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/actions/update_field.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/actions/update_order_by.dart';
//import 'package:tema1/src/tema06_movie_redux/src/actions/update_order_by.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/actions/update_query.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/models/app_state.dart';

AppState reducer(AppState state, dynamic action) {
  final AppStateBuilder builder = state.toBuilder();

  print('Action: $action \n\n');

  if (action is GetPhotosStart) {
    builder.isLoading = true;
  } else if (action is GetPhotosSuccessful) {
    builder
      ..page = builder.page + 1
      ..photos.addAll(action.photos)
      ..isLoading = false;
  } else if (action is GetPhotosError) {
    builder.isLoading = false;
  } else if (action is UpdateField) {
    builder.field = action.field;
  } else if (action is UpdateQuery) {
    builder
      ..photos.clear()
      ..page = 1
      ..query = action.query;
  } else if (action is UpdateOrderBy) {
    builder
      ..photos.clear()
      ..page = 1
      ..orderBy = action.orderBy;
  } else if (action is UpdateColor) {
    builder
      ..photos.clear()
      ..page = 1
      ..color = action.color;
  } else if (action is SetSelectedPhoto) {
    builder.selectedPhoto = action.photoId;
  } else {
    builder.isLoading = false;
    print('Undefined action! \n\n');
  }

  print('Old state: $state \n\n');
  final AppState newState = builder.build();
  print('New state: $newState \n\n');

  return newState;
}
