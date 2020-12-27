library update_order_by;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_order_by.freezed.dart';

@freezed
abstract class UpdateOrderBy with _$UpdateOrderBy {
  const factory UpdateOrderBy(String orderBy) = _UpdateOrderBy;
}
