import 'package:flutter/material.dart';
import 'package:tema1/src/tema07_unsplash_redux/src/containers/index.dart';
import 'package:tema1/src/tema07_unsplash_redux/src/models/index.dart';

class PhotoDetail extends StatelessWidget {
  const PhotoDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhotoContainer(
      //
      builder: (BuildContext context, Photo photo) {
        return Scaffold(
          appBar: AppBar(
            title: Text(photo.altDescription),
            backgroundColor: Colors.red,
          ),
          body: Image.network(photo.urls.full),
        );
      },
    );
  }
}
