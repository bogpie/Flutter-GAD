library update_quality;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_quality.freezed.dart';

@freezed
abstract class UpdateQuality with _$UpdateQuality {
  const factory UpdateQuality(String quality) = _UpdateQuality;
}
