// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetPhotosTearOff {
  const _$GetPhotosTearOff();

// ignore: unused_element
  GetPhotosStart call() {
    return const GetPhotosStart();
  }

// ignore: unused_element
  GetPhotosSuccessful successful(List<Photo> photos) {
    return GetPhotosSuccessful(
      photos,
    );
  }

// ignore: unused_element
  GetPhotosError error(dynamic error) {
    return GetPhotosError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetPhotos = _$GetPhotosTearOff();

/// @nodoc
mixin _$GetPhotos {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetPhotosStart value), {
    @required Result successful(GetPhotosSuccessful value),
    @required Result error(GetPhotosError value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPhotosStart value), {
    Result successful(GetPhotosSuccessful value),
    Result error(GetPhotosError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetPhotosCopyWith<$Res> {
  factory $GetPhotosCopyWith(GetPhotos value, $Res Function(GetPhotos) then) =
      _$GetPhotosCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPhotosCopyWithImpl<$Res> implements $GetPhotosCopyWith<$Res> {
  _$GetPhotosCopyWithImpl(this._value, this._then);

  final GetPhotos _value;

  // ignore: unused_field
  final $Res Function(GetPhotos) _then;
}

/// @nodoc
abstract class $GetPhotosStartCopyWith<$Res> {
  factory $GetPhotosStartCopyWith(
          GetPhotosStart value, $Res Function(GetPhotosStart) then) =
      _$GetPhotosStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPhotosStartCopyWithImpl<$Res> extends _$GetPhotosCopyWithImpl<$Res>
    implements $GetPhotosStartCopyWith<$Res> {
  _$GetPhotosStartCopyWithImpl(
      GetPhotosStart _value, $Res Function(GetPhotosStart) _then)
      : super(_value, (v) => _then(v as GetPhotosStart));

  @override
  GetPhotosStart get _value => super._value as GetPhotosStart;
}

/// @nodoc
class _$GetPhotosStart implements GetPhotosStart {
  const _$GetPhotosStart();

  @override
  String toString() {
    return 'GetPhotos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetPhotosStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetPhotosStart value), {
    @required Result successful(GetPhotosSuccessful value),
    @required Result error(GetPhotosError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPhotosStart value), {
    Result successful(GetPhotosSuccessful value),
    Result error(GetPhotosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetPhotosStart implements GetPhotos {
  const factory GetPhotosStart() = _$GetPhotosStart;
}

/// @nodoc
abstract class $GetPhotosSuccessfulCopyWith<$Res> {
  factory $GetPhotosSuccessfulCopyWith(
          GetPhotosSuccessful value, $Res Function(GetPhotosSuccessful) then) =
      _$GetPhotosSuccessfulCopyWithImpl<$Res>;

  $Res call({List<Photo> photos});
}

/// @nodoc
class _$GetPhotosSuccessfulCopyWithImpl<$Res>
    extends _$GetPhotosCopyWithImpl<$Res>
    implements $GetPhotosSuccessfulCopyWith<$Res> {
  _$GetPhotosSuccessfulCopyWithImpl(
      GetPhotosSuccessful _value, $Res Function(GetPhotosSuccessful) _then)
      : super(_value, (v) => _then(v as GetPhotosSuccessful));

  @override
  GetPhotosSuccessful get _value => super._value as GetPhotosSuccessful;

  @override
  $Res call({
    Object photos = freezed,
  }) {
    return _then(GetPhotosSuccessful(
      photos == freezed ? _value.photos : photos as List<Photo>,
    ));
  }
}

/// @nodoc
class _$GetPhotosSuccessful implements GetPhotosSuccessful {
  const _$GetPhotosSuccessful(this.photos) : assert(photos != null);

  @override
  final List<Photo> photos;

  @override
  String toString() {
    return 'GetPhotos.successful(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPhotosSuccessful &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photos);

  @override
  $GetPhotosSuccessfulCopyWith<GetPhotosSuccessful> get copyWith =>
      _$GetPhotosSuccessfulCopyWithImpl<GetPhotosSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(photos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetPhotosStart value), {
    @required Result successful(GetPhotosSuccessful value),
    @required Result error(GetPhotosError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPhotosStart value), {
    Result successful(GetPhotosSuccessful value),
    Result error(GetPhotosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetPhotosSuccessful implements GetPhotos {
  const factory GetPhotosSuccessful(List<Photo> photos) = _$GetPhotosSuccessful;

  List<Photo> get photos;

  $GetPhotosSuccessfulCopyWith<GetPhotosSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetPhotosErrorCopyWith<$Res> {
  factory $GetPhotosErrorCopyWith(
          GetPhotosError value, $Res Function(GetPhotosError) then) =
      _$GetPhotosErrorCopyWithImpl<$Res>;

  $Res call({dynamic error});
}

/// @nodoc
class _$GetPhotosErrorCopyWithImpl<$Res> extends _$GetPhotosCopyWithImpl<$Res>
    implements $GetPhotosErrorCopyWith<$Res> {
  _$GetPhotosErrorCopyWithImpl(
      GetPhotosError _value, $Res Function(GetPhotosError) _then)
      : super(_value, (v) => _then(v as GetPhotosError));

  @override
  GetPhotosError get _value => super._value as GetPhotosError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetPhotosError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$GetPhotosError implements GetPhotosError {
  const _$GetPhotosError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'GetPhotos.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPhotosError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetPhotosErrorCopyWith<GetPhotosError> get copyWith =>
      _$GetPhotosErrorCopyWithImpl<GetPhotosError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(List<Photo> photos),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(List<Photo> photos),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetPhotosStart value), {
    @required Result successful(GetPhotosSuccessful value),
    @required Result error(GetPhotosError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetPhotosStart value), {
    Result successful(GetPhotosSuccessful value),
    Result error(GetPhotosError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPhotosError implements GetPhotos {
  const factory GetPhotosError(dynamic error) = _$GetPhotosError;

  dynamic get error;

  $GetPhotosErrorCopyWith<GetPhotosError> get copyWith;
}

/// @nodoc
class _$SetSelectedPhotoTearOff {
  const _$SetSelectedPhotoTearOff();

// ignore: unused_element
  SetSelectedPhoto$ call(String photoId) {
    return SetSelectedPhoto$(
      photoId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetSelectedPhoto = _$SetSelectedPhotoTearOff();

/// @nodoc
mixin _$SetSelectedPhoto {
  String get photoId;

  $SetSelectedPhotoCopyWith<SetSelectedPhoto> get copyWith;
}

/// @nodoc
abstract class $SetSelectedPhotoCopyWith<$Res> {
  factory $SetSelectedPhotoCopyWith(
          SetSelectedPhoto value, $Res Function(SetSelectedPhoto) then) =
      _$SetSelectedPhotoCopyWithImpl<$Res>;

  $Res call({String photoId});
}

/// @nodoc
class _$SetSelectedPhotoCopyWithImpl<$Res>
    implements $SetSelectedPhotoCopyWith<$Res> {
  _$SetSelectedPhotoCopyWithImpl(this._value, this._then);

  final SetSelectedPhoto _value;

  // ignore: unused_field
  final $Res Function(SetSelectedPhoto) _then;

  @override
  $Res call({
    Object photoId = freezed,
  }) {
    return _then(_value.copyWith(
      photoId: photoId == freezed ? _value.photoId : photoId as String,
    ));
  }
}

/// @nodoc
abstract class $SetSelectedPhoto$CopyWith<$Res>
    implements $SetSelectedPhotoCopyWith<$Res> {
  factory $SetSelectedPhoto$CopyWith(
          SetSelectedPhoto$ value, $Res Function(SetSelectedPhoto$) then) =
      _$SetSelectedPhoto$CopyWithImpl<$Res>;

  @override
  $Res call({String photoId});
}

/// @nodoc
class _$SetSelectedPhoto$CopyWithImpl<$Res>
    extends _$SetSelectedPhotoCopyWithImpl<$Res>
    implements $SetSelectedPhoto$CopyWith<$Res> {
  _$SetSelectedPhoto$CopyWithImpl(
      SetSelectedPhoto$ _value, $Res Function(SetSelectedPhoto$) _then)
      : super(_value, (v) => _then(v as SetSelectedPhoto$));

  @override
  SetSelectedPhoto$ get _value => super._value as SetSelectedPhoto$;

  @override
  $Res call({
    Object photoId = freezed,
  }) {
    return _then(SetSelectedPhoto$(
      photoId == freezed ? _value.photoId : photoId as String,
    ));
  }
}

/// @nodoc
class _$SetSelectedPhoto$ implements SetSelectedPhoto$ {
  const _$SetSelectedPhoto$(this.photoId) : assert(photoId != null);

  @override
  final String photoId;

  @override
  String toString() {
    return 'SetSelectedPhoto(photoId: $photoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetSelectedPhoto$ &&
            (identical(other.photoId, photoId) ||
                const DeepCollectionEquality().equals(other.photoId, photoId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photoId);

  @override
  $SetSelectedPhoto$CopyWith<SetSelectedPhoto$> get copyWith =>
      _$SetSelectedPhoto$CopyWithImpl<SetSelectedPhoto$>(this, _$identity);
}

abstract class SetSelectedPhoto$ implements SetSelectedPhoto {
  const factory SetSelectedPhoto$(String photoId) = _$SetSelectedPhoto$;

  @override
  String get photoId;

  @override
  $SetSelectedPhoto$CopyWith<SetSelectedPhoto$> get copyWith;
}

/// @nodoc
class _$UpdateColorTearOff {
  const _$UpdateColorTearOff();

// ignore: unused_element
  _UpdateColor call(String color) {
    return _UpdateColor(
      color,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateColor = _$UpdateColorTearOff();

/// @nodoc
mixin _$UpdateColor {
  String get color;

  $UpdateColorCopyWith<UpdateColor> get copyWith;
}

/// @nodoc
abstract class $UpdateColorCopyWith<$Res> {
  factory $UpdateColorCopyWith(
          UpdateColor value, $Res Function(UpdateColor) then) =
      _$UpdateColorCopyWithImpl<$Res>;

  $Res call({String color});
}

/// @nodoc
class _$UpdateColorCopyWithImpl<$Res> implements $UpdateColorCopyWith<$Res> {
  _$UpdateColorCopyWithImpl(this._value, this._then);

  final UpdateColor _value;

  // ignore: unused_field
  final $Res Function(UpdateColor) _then;

  @override
  $Res call({
    Object color = freezed,
  }) {
    return _then(_value.copyWith(
      color: color == freezed ? _value.color : color as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateColorCopyWith<$Res>
    implements $UpdateColorCopyWith<$Res> {
  factory _$UpdateColorCopyWith(
          _UpdateColor value, $Res Function(_UpdateColor) then) =
      __$UpdateColorCopyWithImpl<$Res>;

  @override
  $Res call({String color});
}

/// @nodoc
class __$UpdateColorCopyWithImpl<$Res> extends _$UpdateColorCopyWithImpl<$Res>
    implements _$UpdateColorCopyWith<$Res> {
  __$UpdateColorCopyWithImpl(
      _UpdateColor _value, $Res Function(_UpdateColor) _then)
      : super(_value, (v) => _then(v as _UpdateColor));

  @override
  _UpdateColor get _value => super._value as _UpdateColor;

  @override
  $Res call({
    Object color = freezed,
  }) {
    return _then(_UpdateColor(
      color == freezed ? _value.color : color as String,
    ));
  }
}

/// @nodoc
class _$_UpdateColor implements _UpdateColor {
  const _$_UpdateColor(this.color) : assert(color != null);

  @override
  final String color;

  @override
  String toString() {
    return 'UpdateColor(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateColor &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(color);

  @override
  _$UpdateColorCopyWith<_UpdateColor> get copyWith =>
      __$UpdateColorCopyWithImpl<_UpdateColor>(this, _$identity);
}

abstract class _UpdateColor implements UpdateColor {
  const factory _UpdateColor(String color) = _$_UpdateColor;

  @override
  String get color;

  @override
  _$UpdateColorCopyWith<_UpdateColor> get copyWith;
}

/// @nodoc
class _$UpdateFieldTearOff {
  const _$UpdateFieldTearOff();

// ignore: unused_element
  _UpdateField call(String field) {
    return _UpdateField(
      field,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateField = _$UpdateFieldTearOff();

/// @nodoc
mixin _$UpdateField {
  String get field;

  $UpdateFieldCopyWith<UpdateField> get copyWith;
}

/// @nodoc
abstract class $UpdateFieldCopyWith<$Res> {
  factory $UpdateFieldCopyWith(
          UpdateField value, $Res Function(UpdateField) then) =
      _$UpdateFieldCopyWithImpl<$Res>;

  $Res call({String field});
}

/// @nodoc
class _$UpdateFieldCopyWithImpl<$Res> implements $UpdateFieldCopyWith<$Res> {
  _$UpdateFieldCopyWithImpl(this._value, this._then);

  final UpdateField _value;

  // ignore: unused_field
  final $Res Function(UpdateField) _then;

  @override
  $Res call({
    Object field = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed ? _value.field : field as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateFieldCopyWith<$Res>
    implements $UpdateFieldCopyWith<$Res> {
  factory _$UpdateFieldCopyWith(
          _UpdateField value, $Res Function(_UpdateField) then) =
      __$UpdateFieldCopyWithImpl<$Res>;

  @override
  $Res call({String field});
}

/// @nodoc
class __$UpdateFieldCopyWithImpl<$Res> extends _$UpdateFieldCopyWithImpl<$Res>
    implements _$UpdateFieldCopyWith<$Res> {
  __$UpdateFieldCopyWithImpl(
      _UpdateField _value, $Res Function(_UpdateField) _then)
      : super(_value, (v) => _then(v as _UpdateField));

  @override
  _UpdateField get _value => super._value as _UpdateField;

  @override
  $Res call({
    Object field = freezed,
  }) {
    return _then(_UpdateField(
      field == freezed ? _value.field : field as String,
    ));
  }
}

/// @nodoc
class _$_UpdateField implements _UpdateField {
  const _$_UpdateField(this.field) : assert(field != null);

  @override
  final String field;

  @override
  String toString() {
    return 'UpdateField(field: $field)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateField &&
            (identical(other.field, field) ||
                const DeepCollectionEquality().equals(other.field, field)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(field);

  @override
  _$UpdateFieldCopyWith<_UpdateField> get copyWith =>
      __$UpdateFieldCopyWithImpl<_UpdateField>(this, _$identity);
}

abstract class _UpdateField implements UpdateField {
  const factory _UpdateField(String field) = _$_UpdateField;

  @override
  String get field;

  @override
  _$UpdateFieldCopyWith<_UpdateField> get copyWith;
}

/// @nodoc
class _$UpdateOrderByTearOff {
  const _$UpdateOrderByTearOff();

// ignore: unused_element
  _UpdateOrderBy call(String orderBy) {
    return _UpdateOrderBy(
      orderBy,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateOrderBy = _$UpdateOrderByTearOff();

/// @nodoc
mixin _$UpdateOrderBy {
  String get orderBy;

  $UpdateOrderByCopyWith<UpdateOrderBy> get copyWith;
}

/// @nodoc
abstract class $UpdateOrderByCopyWith<$Res> {
  factory $UpdateOrderByCopyWith(
          UpdateOrderBy value, $Res Function(UpdateOrderBy) then) =
      _$UpdateOrderByCopyWithImpl<$Res>;

  $Res call({String orderBy});
}

/// @nodoc
class _$UpdateOrderByCopyWithImpl<$Res>
    implements $UpdateOrderByCopyWith<$Res> {
  _$UpdateOrderByCopyWithImpl(this._value, this._then);

  final UpdateOrderBy _value;

  // ignore: unused_field
  final $Res Function(UpdateOrderBy) _then;

  @override
  $Res call({
    Object orderBy = freezed,
  }) {
    return _then(_value.copyWith(
      orderBy: orderBy == freezed ? _value.orderBy : orderBy as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateOrderByCopyWith<$Res>
    implements $UpdateOrderByCopyWith<$Res> {
  factory _$UpdateOrderByCopyWith(
          _UpdateOrderBy value, $Res Function(_UpdateOrderBy) then) =
      __$UpdateOrderByCopyWithImpl<$Res>;

  @override
  $Res call({String orderBy});
}

/// @nodoc
class __$UpdateOrderByCopyWithImpl<$Res>
    extends _$UpdateOrderByCopyWithImpl<$Res>
    implements _$UpdateOrderByCopyWith<$Res> {
  __$UpdateOrderByCopyWithImpl(
      _UpdateOrderBy _value, $Res Function(_UpdateOrderBy) _then)
      : super(_value, (v) => _then(v as _UpdateOrderBy));

  @override
  _UpdateOrderBy get _value => super._value as _UpdateOrderBy;

  @override
  $Res call({
    Object orderBy = freezed,
  }) {
    return _then(_UpdateOrderBy(
      orderBy == freezed ? _value.orderBy : orderBy as String,
    ));
  }
}

/// @nodoc
class _$_UpdateOrderBy implements _UpdateOrderBy {
  const _$_UpdateOrderBy(this.orderBy) : assert(orderBy != null);

  @override
  final String orderBy;

  @override
  String toString() {
    return 'UpdateOrderBy(orderBy: $orderBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateOrderBy &&
            (identical(other.orderBy, orderBy) ||
                const DeepCollectionEquality().equals(other.orderBy, orderBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderBy);

  @override
  _$UpdateOrderByCopyWith<_UpdateOrderBy> get copyWith =>
      __$UpdateOrderByCopyWithImpl<_UpdateOrderBy>(this, _$identity);
}

abstract class _UpdateOrderBy implements UpdateOrderBy {
  const factory _UpdateOrderBy(String orderBy) = _$_UpdateOrderBy;

  @override
  String get orderBy;

  @override
  _$UpdateOrderByCopyWith<_UpdateOrderBy> get copyWith;
}

/// @nodoc
class _$UpdateQueryTearOff {
  const _$UpdateQueryTearOff();

// ignore: unused_element
  _UpdateQuery call(String query) {
    return _UpdateQuery(
      query,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateQuery = _$UpdateQueryTearOff();

/// @nodoc
mixin _$UpdateQuery {
  String get query;

  $UpdateQueryCopyWith<UpdateQuery> get copyWith;
}

/// @nodoc
abstract class $UpdateQueryCopyWith<$Res> {
  factory $UpdateQueryCopyWith(
          UpdateQuery value, $Res Function(UpdateQuery) then) =
      _$UpdateQueryCopyWithImpl<$Res>;

  $Res call({String query});
}

/// @nodoc
class _$UpdateQueryCopyWithImpl<$Res> implements $UpdateQueryCopyWith<$Res> {
  _$UpdateQueryCopyWithImpl(this._value, this._then);

  final UpdateQuery _value;

  // ignore: unused_field
  final $Res Function(UpdateQuery) _then;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateQueryCopyWith<$Res>
    implements $UpdateQueryCopyWith<$Res> {
  factory _$UpdateQueryCopyWith(
          _UpdateQuery value, $Res Function(_UpdateQuery) then) =
      __$UpdateQueryCopyWithImpl<$Res>;

  @override
  $Res call({String query});
}

/// @nodoc
class __$UpdateQueryCopyWithImpl<$Res> extends _$UpdateQueryCopyWithImpl<$Res>
    implements _$UpdateQueryCopyWith<$Res> {
  __$UpdateQueryCopyWithImpl(
      _UpdateQuery _value, $Res Function(_UpdateQuery) _then)
      : super(_value, (v) => _then(v as _UpdateQuery));

  @override
  _UpdateQuery get _value => super._value as _UpdateQuery;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(_UpdateQuery(
      query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$_UpdateQuery implements _UpdateQuery {
  const _$_UpdateQuery(this.query) : assert(query != null);

  @override
  final String query;

  @override
  String toString() {
    return 'UpdateQuery(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateQuery &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  _$UpdateQueryCopyWith<_UpdateQuery> get copyWith =>
      __$UpdateQueryCopyWithImpl<_UpdateQuery>(this, _$identity);
}

abstract class _UpdateQuery implements UpdateQuery {
  const factory _UpdateQuery(String query) = _$_UpdateQuery;

  @override
  String get query;

  @override
  _$UpdateQueryCopyWith<_UpdateQuery> get copyWith;
}
