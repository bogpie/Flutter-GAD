part of actions;

@freezed
abstract class GetPhotos with _$GetPhotos {
  const factory GetPhotos() = GetPhotosStart;

  const factory GetPhotos.successful(List<Photo> photos) = GetPhotosSuccessful;

  const factory GetPhotos.error(dynamic error) = GetPhotosError;
}
