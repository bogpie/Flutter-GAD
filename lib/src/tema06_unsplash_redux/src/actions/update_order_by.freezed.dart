// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of update_order_by;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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
  factory $UpdateOrderByCopyWith(UpdateOrderBy value, $Res Function(UpdateOrderBy) then) =
      _$UpdateOrderByCopyWithImpl<$Res>;

  $Res call({String orderBy});
}

/// @nodoc
class _$UpdateOrderByCopyWithImpl<$Res> implements $UpdateOrderByCopyWith<$Res> {
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
abstract class _$UpdateOrderByCopyWith<$Res> implements $UpdateOrderByCopyWith<$Res> {
  factory _$UpdateOrderByCopyWith(_UpdateOrderBy value, $Res Function(_UpdateOrderBy) then) =
      __$UpdateOrderByCopyWithImpl<$Res>;

  @override
  $Res call({String orderBy});
}

/// @nodoc
class __$UpdateOrderByCopyWithImpl<$Res> extends _$UpdateOrderByCopyWithImpl<$Res>
    implements _$UpdateOrderByCopyWith<$Res> {
  __$UpdateOrderByCopyWithImpl(_UpdateOrderBy _value, $Res Function(_UpdateOrderBy) _then)
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
            (identical(other.orderBy, orderBy) || const DeepCollectionEquality().equals(other.orderBy, orderBy)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderBy);

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
