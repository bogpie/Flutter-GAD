part of containers;

class ColorContainer extends StatelessWidget {
  const ColorContainer({Key key, @required this.builder}) : super(key: key);
  final ViewModelBuilder<String> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String>(
      converter: (Store<AppState> store) {
        return store.state.color;
      },
      builder: builder,
    );
  }
}
