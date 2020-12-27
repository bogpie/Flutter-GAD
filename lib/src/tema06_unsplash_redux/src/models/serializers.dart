library serializers;

import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/serializer.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/models/photo.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/models/urls.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[Photo, Urls])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();
