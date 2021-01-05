part of containers;

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
