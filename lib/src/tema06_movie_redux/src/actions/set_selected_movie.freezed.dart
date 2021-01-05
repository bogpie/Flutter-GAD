// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of set_selected_movie;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetSelectedMovieTearOff {
  const _$SetSelectedMovieTearOff();

// ignore: unused_element
  SetSelectedMovie$ call(int movieId) {
    return SetSelectedMovie$(
      movieId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetSelectedMovie = _$SetSelectedMovieTearOff();

/// @nodoc
mixin _$SetSelectedMovie {
  int get movieId;

  $SetSelectedMovieCopyWith<SetSelectedMovie> get copyWith;
}

/// @nodoc
abstract class $SetSelectedMovieCopyWith<$Res> {
  factory $SetSelectedMovieCopyWith(
          SetSelectedMovie value, $Res Function(SetSelectedMovie) then) =
      _$SetSelectedMovieCopyWithImpl<$Res>;
  $Res call({int movieId});
}

/// @nodoc
class _$SetSelectedMovieCopyWithImpl<$Res>
    implements $SetSelectedMovieCopyWith<$Res> {
  _$SetSelectedMovieCopyWithImpl(this._value, this._then);

  final SetSelectedMovie _value;
  // ignore: unused_field
  final $Res Function(SetSelectedMovie) _then;

  @override
  $Res call({
    Object movieId = freezed,
  }) {
    return _then(_value.copyWith(
      movieId: movieId == freezed ? _value.movieId : movieId as int,
    ));
  }
}

/// @nodoc
abstract class $SetSelectedMovie$CopyWith<$Res>
    implements $SetSelectedMovieCopyWith<$Res> {
  factory $SetSelectedMovie$CopyWith(
          SetSelectedMovie$ value, $Res Function(SetSelectedMovie$) then) =
      _$SetSelectedMovie$CopyWithImpl<$Res>;
  @override
  $Res call({int movieId});
}

/// @nodoc
class _$SetSelectedMovie$CopyWithImpl<$Res>
    extends _$SetSelectedMovieCopyWithImpl<$Res>
    implements $SetSelectedMovie$CopyWith<$Res> {
  _$SetSelectedMovie$CopyWithImpl(
      SetSelectedMovie$ _value, $Res Function(SetSelectedMovie$) _then)
      : super(_value, (v) => _then(v as SetSelectedMovie$));

  @override
  SetSelectedMovie$ get _value => super._value as SetSelectedMovie$;

  @override
  $Res call({
    Object movieId = freezed,
  }) {
    return _then(SetSelectedMovie$(
      movieId == freezed ? _value.movieId : movieId as int,
    ));
  }
}

/// @nodoc
class _$SetSelectedMovie$ implements SetSelectedMovie$ {
  const _$SetSelectedMovie$(this.movieId) : assert(movieId != null);

  @override
  final int movieId;

  @override
  String toString() {
    return 'SetSelectedMovie(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetSelectedMovie$ &&
            (identical(other.movieId, movieId) ||
                const DeepCollectionEquality().equals(other.movieId, movieId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieId);

  @override
  $SetSelectedMovie$CopyWith<SetSelectedMovie$> get copyWith =>
      _$SetSelectedMovie$CopyWithImpl<SetSelectedMovie$>(this, _$identity);
}

abstract class SetSelectedMovie$ implements SetSelectedMovie {
  const factory SetSelectedMovie$(int movieId) = _$SetSelectedMovie$;

  @override
  int get movieId;
  @override
  $SetSelectedMovie$CopyWith<SetSelectedMovie$> get copyWith;
}
