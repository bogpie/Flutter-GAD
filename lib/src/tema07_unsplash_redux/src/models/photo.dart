part of models;

abstract class Photo implements Built<Photo, PhotoBuilder> {
  factory Photo([void Function(PhotoBuilder) updates]) = _$Photo;

  factory Photo.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json);
  }

  Photo._();

  String get id;

  int get width;

  int get height;

  String get color;

  @BuiltValueField(wireName: 'alt_description')
  @nullable
  String get altDescription;

  @nullable
  Urls get urls;

  static Serializer<Photo> get serializer => _$photoSerializer;
}
