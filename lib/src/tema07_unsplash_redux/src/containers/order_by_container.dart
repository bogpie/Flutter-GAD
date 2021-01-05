part of containers;

class OrderByContainer extends StatelessWidget {
  const OrderByContainer({Key key, @required this.builder}) : super(key: key);
  final ViewModelBuilder<String> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String>(
      converter: (Store<AppState> store) {
        return store.state.orderBy;
      },
      builder: builder,
    );
  }
}
