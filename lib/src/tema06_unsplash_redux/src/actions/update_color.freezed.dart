// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of update_order_by;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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
