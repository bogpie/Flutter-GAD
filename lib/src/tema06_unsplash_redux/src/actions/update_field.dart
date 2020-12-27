library update_field;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_field.freezed.dart';

@freezed
abstract class UpdateField with _$UpdateField {
  const factory UpdateField(String field) = _UpdateField;
}