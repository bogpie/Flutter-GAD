part of containers;

class PhotoContainer extends StatelessWidget {
  const PhotoContainer({Key key, @required this.builder}) : super(key: key);
  final ViewModelBuilder<Photo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Photo>(
      converter: (Store<AppState> store) {
        return store.state.photos.firstWhere((Photo photo) => photo.id == store.state.selectedPhoto);
      },
      builder: builder,
    );
  }
}
