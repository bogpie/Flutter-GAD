library update_order_by;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_color.freezed.dart';

@freezed
abstract class UpdateColor with _$UpdateColor {
  const factory UpdateColor(String color) = _UpdateColor;
}
