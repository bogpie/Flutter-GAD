library get_photos;

import 'package:tema1/src/tema06_unsplash_redux/src/models/photo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_photos.freezed.dart';

@freezed
abstract class GetPhotos with _$GetPhotos {
  const factory GetPhotos() = GetPhotosStart;

  const factory GetPhotos.successful(List<Photo> photos) = GetPhotosSuccessful;

  const factory GetPhotos.error(dynamic error) = GetPhotosError;
}
