// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final BuiltList<Movie> movies;
  @override
  final int nextPage;
  @override
  final String quality;
  @override
  final String genre;
  @override
  final String orderBy;
  @override
  final bool isLoading;
  @override
  final int selectedMovie;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.movies,
      this.nextPage,
      this.quality,
      this.genre,
      this.orderBy,
      this.isLoading,
      this.selectedMovie})
      : super._() {
    if (movies == null) {
      throw new BuiltValueNullFieldError('AppState', 'movies');
    }
    if (nextPage == null) {
      throw new BuiltValueNullFieldError('AppState', 'nextPage');
    }
    if (orderBy == null) {
      throw new BuiltValueNullFieldError('AppState', 'orderBy');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AppState', 'isLoading');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        movies == other.movies &&
        nextPage == other.nextPage &&
        quality == other.quality &&
        genre == other.genre &&
        orderBy == other.orderBy &&
        isLoading == other.isLoading &&
        selectedMovie == other.selectedMovie;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, movies.hashCode), nextPage.hashCode),
                        quality.hashCode),
                    genre.hashCode),
                orderBy.hashCode),
            isLoading.hashCode),
        selectedMovie.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('movies', movies)
          ..add('nextPage', nextPage)
          ..add('quality', quality)
          ..add('genre', genre)
          ..add('orderBy', orderBy)
          ..add('isLoading', isLoading)
          ..add('selectedMovie', selectedMovie))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  ListBuilder<Movie> _movies;
  ListBuilder<Movie> get movies => _$this._movies ??= new ListBuilder<Movie>();
  set movies(ListBuilder<Movie> movies) => _$this._movies = movies;

  int _nextPage;
  int get nextPage => _$this._nextPage;
  set nextPage(int nextPage) => _$this._nextPage = nextPage;

  String _quality;
  String get quality => _$this._quality;
  set quality(String quality) => _$this._quality = quality;

  String _genre;
  String get genre => _$this._genre;
  set genre(String genre) => _$this._genre = genre;

  String _orderBy;
  String get orderBy => _$this._orderBy;
  set orderBy(String orderBy) => _$this._orderBy = orderBy;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  int _selectedMovie;
  int get selectedMovie => _$this._selectedMovie;
  set selectedMovie(int selectedMovie) => _$this._selectedMovie = selectedMovie;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _movies = _$v.movies?.toBuilder();
      _nextPage = _$v.nextPage;
      _quality = _$v.quality;
      _genre = _$v.genre;
      _orderBy = _$v.orderBy;
      _isLoading = _$v.isLoading;
      _selectedMovie = _$v.selectedMovie;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              movies: movies.build(),
              nextPage: nextPage,
              quality: quality,
              genre: genre,
              orderBy: orderBy,
              isLoading: isLoading,
              selectedMovie: selectedMovie);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'movies';
        movies.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
