library update_genre;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_Genre.freezed.dart';

@freezed
abstract class UpdateGenre with _$UpdateGenre {
  const factory UpdateGenre(String genre) = _UpdateGenre;
}