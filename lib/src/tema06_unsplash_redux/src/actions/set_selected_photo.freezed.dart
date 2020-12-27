// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_selected_photo;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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
  factory $SetSelectedPhotoCopyWith(SetSelectedPhoto value, $Res Function(SetSelectedPhoto) then) =
      _$SetSelectedPhotoCopyWithImpl<$Res>;

  $Res call({String photoId});
}

/// @nodoc
class _$SetSelectedPhotoCopyWithImpl<$Res> implements $SetSelectedPhotoCopyWith<$Res> {
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
abstract class $SetSelectedPhoto$CopyWith<$Res> implements $SetSelectedPhotoCopyWith<$Res> {
  factory $SetSelectedPhoto$CopyWith(SetSelectedPhoto$ value, $Res Function(SetSelectedPhoto$) then) =
      _$SetSelectedPhoto$CopyWithImpl<$Res>;

  @override
  $Res call({String photoId});
}

/// @nodoc
class _$SetSelectedPhoto$CopyWithImpl<$Res> extends _$SetSelectedPhotoCopyWithImpl<$Res>
    implements $SetSelectedPhoto$CopyWith<$Res> {
  _$SetSelectedPhoto$CopyWithImpl(SetSelectedPhoto$ _value, $Res Function(SetSelectedPhoto$) _then)
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
            (identical(other.photoId, photoId) || const DeepCollectionEquality().equals(other.photoId, photoId)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(photoId);

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
