library update_query;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_query.freezed.dart';

@freezed
abstract class UpdateQuery with _$UpdateQuery {
  const factory UpdateQuery(String query) = _UpdateQuery;
}
