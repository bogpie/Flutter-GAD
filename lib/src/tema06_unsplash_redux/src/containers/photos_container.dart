import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/models/app_state.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/models/photo.dart';

class PhotosContainer extends StatelessWidget {
  const PhotosContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<BuiltList<Photo>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, BuiltList<Photo>>(
      converter: (Store<AppState> store) {
        return store.state.photos;
      },
      builder: builder,
    );
  }
}
