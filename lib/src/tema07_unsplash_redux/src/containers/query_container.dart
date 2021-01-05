part of containers;

class QueryContainer extends StatelessWidget {
  const QueryContainer({Key key, @required this.builder}) : super(key: key);
  final ViewModelBuilder<String> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String>(
      converter: (Store<AppState> store) {
        return store.state.query;
      },
      builder: builder,
    );
  }
}
