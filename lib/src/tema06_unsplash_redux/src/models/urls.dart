library urls;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'urls.g.dart';

abstract class Urls implements Built<Urls, UrlsBuilder> {
  factory Urls([void Function(UrlsBuilder) updates]) = _$Urls;

  Urls._();

  String get raw;

  String get full;

  String get regular;

  String get small;

  String get thumb;

  static Serializer<Urls> get serializer => _$urlsSerializer;
}
