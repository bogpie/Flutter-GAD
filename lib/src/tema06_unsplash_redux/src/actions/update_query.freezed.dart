// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of update_query;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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
