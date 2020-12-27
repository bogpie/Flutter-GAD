// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of update_genre;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UpdateGenreTearOff {
  const _$UpdateGenreTearOff();

// ignore: unused_element
  _UpdateGenre call(String genre) {
    return _UpdateGenre(
      genre,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateGenre = _$UpdateGenreTearOff();

/// @nodoc
mixin _$UpdateGenre {
  String get genre;

  $UpdateGenreCopyWith<UpdateGenre> get copyWith;
}

/// @nodoc
abstract class $UpdateGenreCopyWith<$Res> {
  factory $UpdateGenreCopyWith(
          UpdateGenre value, $Res Function(UpdateGenre) then) =
      _$UpdateGenreCopyWithImpl<$Res>;
  $Res call({String genre});
}

/// @nodoc
class _$UpdateGenreCopyWithImpl<$Res> implements $UpdateGenreCopyWith<$Res> {
  _$UpdateGenreCopyWithImpl(this._value, this._then);

  final UpdateGenre _value;
  // ignore: unused_field
  final $Res Function(UpdateGenre) _then;

  @override
  $Res call({
    Object genre = freezed,
  }) {
    return _then(_value.copyWith(
      genre: genre == freezed ? _value.genre : genre as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateGenreCopyWith<$Res>
    implements $UpdateGenreCopyWith<$Res> {
  factory _$UpdateGenreCopyWith(
          _UpdateGenre value, $Res Function(_UpdateGenre) then) =
      __$UpdateGenreCopyWithImpl<$Res>;
  @override
  $Res call({String genre});
}

/// @nodoc
class __$UpdateGenreCopyWithImpl<$Res> extends _$UpdateGenreCopyWithImpl<$Res>
    implements _$UpdateGenreCopyWith<$Res> {
  __$UpdateGenreCopyWithImpl(
      _UpdateGenre _value, $Res Function(_UpdateGenre) _then)
      : super(_value, (v) => _then(v as _UpdateGenre));

  @override
  _UpdateGenre get _value => super._value as _UpdateGenre;

  @override
  $Res call({
    Object genre = freezed,
  }) {
    return _then(_UpdateGenre(
      genre == freezed ? _value.genre : genre as String,
    ));
  }
}

/// @nodoc
class _$_UpdateGenre implements _UpdateGenre {
  const _$_UpdateGenre(this.genre) : assert(genre != null);

  @override
  final String genre;

  @override
  String toString() {
    return 'UpdateGenre(genre: $genre)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateGenre &&
            (identical(other.genre, genre) ||
                const DeepCollectionEquality().equals(other.genre, genre)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(genre);

  @override
  _$UpdateGenreCopyWith<_UpdateGenre> get copyWith =>
      __$UpdateGenreCopyWithImpl<_UpdateGenre>(this, _$identity);
}

abstract class _UpdateGenre implements UpdateGenre {
  const factory _UpdateGenre(String genre) = _$_UpdateGenre;

  @override
  String get genre;
  @override
  _$UpdateGenreCopyWith<_UpdateGenre> get copyWith;
}
