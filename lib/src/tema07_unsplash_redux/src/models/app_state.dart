part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  factory AppState.initialState() {
    final AppStateBuilder builder = AppStateBuilder();
    builder
      ..isLoading = true
      ..page = 1
      ..field = ''
      ..orderBy = 'relevant';
    return builder.build();
  }

  AppState._();

  BuiltList<Photo> get photos;

  int get page;

  @nullable
  String get query;

  String get field;

  @BuiltValueField(wireName: 'order_by')
  String get orderBy;

  @nullable
  String get color;

  @nullable
  String get selectedPhoto;

  bool get isLoading;
}
