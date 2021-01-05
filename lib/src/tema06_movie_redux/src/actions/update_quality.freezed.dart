// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of update_quality;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UpdateQualityTearOff {
  const _$UpdateQualityTearOff();

// ignore: unused_element
  _UpdateQuality call(String quality) {
    return _UpdateQuality(
      quality,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateQuality = _$UpdateQualityTearOff();

/// @nodoc
mixin _$UpdateQuality {
  String get quality;

  $UpdateQualityCopyWith<UpdateQuality> get copyWith;
}

/// @nodoc
abstract class $UpdateQualityCopyWith<$Res> {
  factory $UpdateQualityCopyWith(
          UpdateQuality value, $Res Function(UpdateQuality) then) =
      _$UpdateQualityCopyWithImpl<$Res>;
  $Res call({String quality});
}

/// @nodoc
class _$UpdateQualityCopyWithImpl<$Res>
    implements $UpdateQualityCopyWith<$Res> {
  _$UpdateQualityCopyWithImpl(this._value, this._then);

  final UpdateQuality _value;
  // ignore: unused_field
  final $Res Function(UpdateQuality) _then;

  @override
  $Res call({
    Object quality = freezed,
  }) {
    return _then(_value.copyWith(
      quality: quality == freezed ? _value.quality : quality as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateQualityCopyWith<$Res>
    implements $UpdateQualityCopyWith<$Res> {
  factory _$UpdateQualityCopyWith(
          _UpdateQuality value, $Res Function(_UpdateQuality) then) =
      __$UpdateQualityCopyWithImpl<$Res>;
  @override
  $Res call({String quality});
}

/// @nodoc
class __$UpdateQualityCopyWithImpl<$Res>
    extends _$UpdateQualityCopyWithImpl<$Res>
    implements _$UpdateQualityCopyWith<$Res> {
  __$UpdateQualityCopyWithImpl(
      _UpdateQuality _value, $Res Function(_UpdateQuality) _then)
      : super(_value, (v) => _then(v as _UpdateQuality));

  @override
  _UpdateQuality get _value => super._value as _UpdateQuality;

  @override
  $Res call({
    Object quality = freezed,
  }) {
    return _then(_UpdateQuality(
      quality == freezed ? _value.quality : quality as String,
    ));
  }
}

/// @nodoc
class _$_UpdateQuality implements _UpdateQuality {
  const _$_UpdateQuality(this.quality) : assert(quality != null);

  @override
  final String quality;

  @override
  String toString() {
    return 'UpdateQuality(quality: $quality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateQuality &&
            (identical(other.quality, quality) ||
                const DeepCollectionEquality().equals(other.quality, quality)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quality);

  @override
  _$UpdateQualityCopyWith<_UpdateQuality> get copyWith =>
      __$UpdateQualityCopyWithImpl<_UpdateQuality>(this, _$identity);
}

abstract class _UpdateQuality implements UpdateQuality {
  const factory _UpdateQuality(String quality) = _$_UpdateQuality;

  @override
  String get quality;
  @override
  _$UpdateQualityCopyWith<_UpdateQuality> get copyWith;
}
