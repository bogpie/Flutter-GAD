// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of update_field;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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
  factory $UpdateFieldCopyWith(UpdateField value, $Res Function(UpdateField) then) = _$UpdateFieldCopyWithImpl<$Res>;

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
abstract class _$UpdateFieldCopyWith<$Res> implements $UpdateFieldCopyWith<$Res> {
  factory _$UpdateFieldCopyWith(_UpdateField value, $Res Function(_UpdateField) then) =
      __$UpdateFieldCopyWithImpl<$Res>;

  @override
  $Res call({String field});
}

/// @nodoc
class __$UpdateFieldCopyWithImpl<$Res> extends _$UpdateFieldCopyWithImpl<$Res> implements _$UpdateFieldCopyWith<$Res> {
  __$UpdateFieldCopyWithImpl(_UpdateField _value, $Res Function(_UpdateField) _then)
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
            (identical(other.field, field) || const DeepCollectionEquality().equals(other.field, field)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(field);

  @override
  _$UpdateFieldCopyWith<_UpdateField> get copyWith => __$UpdateFieldCopyWithImpl<_UpdateField>(this, _$identity);
}

abstract class _UpdateField implements UpdateField {
  const factory _UpdateField(String field) = _$_UpdateField;

  @override
  String get field;

  @override
  _$UpdateFieldCopyWith<_UpdateField> get copyWith;
}
