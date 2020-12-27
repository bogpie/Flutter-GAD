library set_selected_photo;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_selected_photo.freezed.dart';

@freezed
abstract class SetSelectedPhoto with _$SetSelectedPhoto {
  const factory SetSelectedPhoto(String photoId) = SetSelectedPhoto$;
}
