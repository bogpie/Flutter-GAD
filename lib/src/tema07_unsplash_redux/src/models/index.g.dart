// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Photo> _$photoSerializer = new _$PhotoSerializer();
Serializer<Urls> _$urlsSerializer = new _$UrlsSerializer();

class _$PhotoSerializer implements StructuredSerializer<Photo> {
  @override
  final Iterable<Type> types = const [Photo, _$Photo];
  @override
  final String wireName = 'Photo';

  @override
  Iterable<Object> serialize(Serializers serializers, Photo object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'width',
      serializers.serialize(object.width, specifiedType: const FullType(int)),
      'height',
      serializers.serialize(object.height, specifiedType: const FullType(int)),
      'color',
      serializers.serialize(object.color, specifiedType: const FullType(String)),
    ];
    if (object.altDescription != null) {
      result
        ..add('alt_description')
        ..add(serializers.serialize(object.altDescription, specifiedType: const FullType(String)));
    }
    if (object.urls != null) {
      result..add('urls')..add(serializers.serialize(object.urls, specifiedType: const FullType(Urls)));
    }
    return result;
  }

  @override
  Photo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhotoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'width':
          result.width = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'height':
          result.height = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'color':
          result.color = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'alt_description':
          result.altDescription = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'urls':
          result.urls.replace(serializers.deserialize(value, specifiedType: const FullType(Urls)) as Urls);
          break;
      }
    }

    return result.build();
  }
}

class _$UrlsSerializer implements StructuredSerializer<Urls> {
  @override
  final Iterable<Type> types = const [Urls, _$Urls];
  @override
  final String wireName = 'Urls';

  @override
  Iterable<Object> serialize(Serializers serializers, Urls object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'raw',
      serializers.serialize(object.raw, specifiedType: const FullType(String)),
      'full',
      serializers.serialize(object.full, specifiedType: const FullType(String)),
      'regular',
      serializers.serialize(object.regular, specifiedType: const FullType(String)),
      'small',
      serializers.serialize(object.small, specifiedType: const FullType(String)),
      'thumb',
      serializers.serialize(object.thumb, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Urls deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UrlsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'raw':
          result.raw = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'full':
          result.full = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'regular':
          result.regular = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'small':
          result.small = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'thumb':
          result.thumb = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final BuiltList<Photo> photos;
  @override
  final int page;
  @override
  final String query;
  @override
  final String field;
  @override
  final String orderBy;
  @override
  final String color;
  @override
  final String selectedPhoto;
  @override
  final bool isLoading;

  factory _$AppState([void Function(AppStateBuilder) updates]) => (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.photos, this.page, this.query, this.field, this.orderBy, this.color, this.selectedPhoto, this.isLoading})
      : super._() {
    if (photos == null) {
      throw new BuiltValueNullFieldError('AppState', 'photos');
    }
    if (page == null) {
      throw new BuiltValueNullFieldError('AppState', 'page');
    }
    if (field == null) {
      throw new BuiltValueNullFieldError('AppState', 'field');
    }
    if (orderBy == null) {
      throw new BuiltValueNullFieldError('AppState', 'orderBy');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AppState', 'isLoading');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        photos == other.photos &&
        page == other.page &&
        query == other.query &&
        field == other.field &&
        orderBy == other.orderBy &&
        color == other.color &&
        selectedPhoto == other.selectedPhoto &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc($jc(0, photos.hashCode), page.hashCode), query.hashCode), field.hashCode),
                    orderBy.hashCode),
                color.hashCode),
            selectedPhoto.hashCode),
        isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('photos', photos)
          ..add('page', page)
          ..add('query', query)
          ..add('field', field)
          ..add('orderBy', orderBy)
          ..add('color', color)
          ..add('selectedPhoto', selectedPhoto)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  ListBuilder<Photo> _photos;

  ListBuilder<Photo> get photos => _$this._photos ??= new ListBuilder<Photo>();

  set photos(ListBuilder<Photo> photos) => _$this._photos = photos;

  int _page;

  int get page => _$this._page;

  set page(int page) => _$this._page = page;

  String _query;

  String get query => _$this._query;

  set query(String query) => _$this._query = query;

  String _field;

  String get field => _$this._field;

  set field(String field) => _$this._field = field;

  String _orderBy;

  String get orderBy => _$this._orderBy;

  set orderBy(String orderBy) => _$this._orderBy = orderBy;

  String _color;

  String get color => _$this._color;

  set color(String color) => _$this._color = color;

  String _selectedPhoto;

  String get selectedPhoto => _$this._selectedPhoto;

  set selectedPhoto(String selectedPhoto) => _$this._selectedPhoto = selectedPhoto;

  bool _isLoading;

  bool get isLoading => _$this._isLoading;

  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _photos = _$v.photos?.toBuilder();
      _page = _$v.page;
      _query = _$v.query;
      _field = _$v.field;
      _orderBy = _$v.orderBy;
      _color = _$v.color;
      _selectedPhoto = _$v.selectedPhoto;
      _isLoading = _$v.isLoading;
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
              photos: photos.build(),
              page: page,
              query: query,
              field: field,
              orderBy: orderBy,
              color: color,
              selectedPhoto: selectedPhoto,
              isLoading: isLoading);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'photos';
        photos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Photo extends Photo {
  @override
  final String id;
  @override
  final int width;
  @override
  final int height;
  @override
  final String color;
  @override
  final String altDescription;
  @override
  final Urls urls;

  factory _$Photo([void Function(PhotoBuilder) updates]) => (new PhotoBuilder()..update(updates)).build();

  _$Photo._({this.id, this.width, this.height, this.color, this.altDescription, this.urls}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Photo', 'id');
    }
    if (width == null) {
      throw new BuiltValueNullFieldError('Photo', 'width');
    }
    if (height == null) {
      throw new BuiltValueNullFieldError('Photo', 'height');
    }
    if (color == null) {
      throw new BuiltValueNullFieldError('Photo', 'color');
    }
  }

  @override
  Photo rebuild(void Function(PhotoBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  PhotoBuilder toBuilder() => new PhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Photo &&
        id == other.id &&
        width == other.width &&
        height == other.height &&
        color == other.color &&
        altDescription == other.altDescription &&
        urls == other.urls;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc($jc(0, id.hashCode), width.hashCode), height.hashCode), color.hashCode),
            altDescription.hashCode),
        urls.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Photo')
          ..add('id', id)
          ..add('width', width)
          ..add('height', height)
          ..add('color', color)
          ..add('altDescription', altDescription)
          ..add('urls', urls))
        .toString();
  }
}

class PhotoBuilder implements Builder<Photo, PhotoBuilder> {
  _$Photo _$v;

  String _id;

  String get id => _$this._id;

  set id(String id) => _$this._id = id;

  int _width;

  int get width => _$this._width;

  set width(int width) => _$this._width = width;

  int _height;

  int get height => _$this._height;

  set height(int height) => _$this._height = height;

  String _color;

  String get color => _$this._color;

  set color(String color) => _$this._color = color;

  String _altDescription;

  String get altDescription => _$this._altDescription;

  set altDescription(String altDescription) => _$this._altDescription = altDescription;

  UrlsBuilder _urls;

  UrlsBuilder get urls => _$this._urls ??= new UrlsBuilder();

  set urls(UrlsBuilder urls) => _$this._urls = urls;

  PhotoBuilder();

  PhotoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _width = _$v.width;
      _height = _$v.height;
      _color = _$v.color;
      _altDescription = _$v.altDescription;
      _urls = _$v.urls?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Photo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Photo;
  }

  @override
  void update(void Function(PhotoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Photo build() {
    _$Photo _$result;
    try {
      _$result = _$v ??
          new _$Photo._(
              id: id, width: width, height: height, color: color, altDescription: altDescription, urls: _urls?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'urls';
        _urls?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('Photo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Urls extends Urls {
  @override
  final String raw;
  @override
  final String full;
  @override
  final String regular;
  @override
  final String small;
  @override
  final String thumb;

  factory _$Urls([void Function(UrlsBuilder) updates]) => (new UrlsBuilder()..update(updates)).build();

  _$Urls._({this.raw, this.full, this.regular, this.small, this.thumb}) : super._() {
    if (raw == null) {
      throw new BuiltValueNullFieldError('Urls', 'raw');
    }
    if (full == null) {
      throw new BuiltValueNullFieldError('Urls', 'full');
    }
    if (regular == null) {
      throw new BuiltValueNullFieldError('Urls', 'regular');
    }
    if (small == null) {
      throw new BuiltValueNullFieldError('Urls', 'small');
    }
    if (thumb == null) {
      throw new BuiltValueNullFieldError('Urls', 'thumb');
    }
  }

  @override
  Urls rebuild(void Function(UrlsBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  UrlsBuilder toBuilder() => new UrlsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Urls &&
        raw == other.raw &&
        full == other.full &&
        regular == other.regular &&
        small == other.small &&
        thumb == other.thumb;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc($jc($jc(0, raw.hashCode), full.hashCode), regular.hashCode), small.hashCode), thumb.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Urls')
          ..add('raw', raw)
          ..add('full', full)
          ..add('regular', regular)
          ..add('small', small)
          ..add('thumb', thumb))
        .toString();
  }
}

class UrlsBuilder implements Builder<Urls, UrlsBuilder> {
  _$Urls _$v;

  String _raw;

  String get raw => _$this._raw;

  set raw(String raw) => _$this._raw = raw;

  String _full;

  String get full => _$this._full;

  set full(String full) => _$this._full = full;

  String _regular;

  String get regular => _$this._regular;

  set regular(String regular) => _$this._regular = regular;

  String _small;

  String get small => _$this._small;

  set small(String small) => _$this._small = small;

  String _thumb;

  String get thumb => _$this._thumb;

  set thumb(String thumb) => _$this._thumb = thumb;

  UrlsBuilder();

  UrlsBuilder get _$this {
    if (_$v != null) {
      _raw = _$v.raw;
      _full = _$v.full;
      _regular = _$v.regular;
      _small = _$v.small;
      _thumb = _$v.thumb;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Urls other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Urls;
  }

  @override
  void update(void Function(UrlsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Urls build() {
    final _$result = _$v ?? new _$Urls._(raw: raw, full: full, regular: regular, small: small, thumb: thumb);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
