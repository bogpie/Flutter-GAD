import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tema1/src/tema06_movie_redux/src/actions/update_order_by.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/actions/get_photos.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/actions/set_selected_photo.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/actions/update_color.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/actions/update_field.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/actions/update_query.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/containers/color_container.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/containers/is_loading_container.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/containers/order_by_container.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/containers/page_container.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/containers/photos_container.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/models/app_state.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/models/photo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      builder: (BuildContext context, int page) {
        return IsLoadingContainer(
          builder: (BuildContext context, bool isLoading) {
            //
            return Scaffold(
              appBar: AppBar(
                title: page == 2 ? Text('${page - 1} page') : Text('${page - 1} pages'),
                backgroundColor: Colors.red,
              ),
              //
              body: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: <Widget>[
                    OrderByContainer(
                      builder: (BuildContext context, String orderBy) {
                        return Wrap(
                          spacing: 8.0,
                          children: <String>[
                            'Relevant',
                            'Latest',
                          ].map(
                            (String value) {
                              return ChoiceChip(
                                label: Text(value),
                                selected: value == orderBy,
                                onSelected: (bool selected) {
                                  if (selected) {
                                    StoreProvider.of<AppState>(context)
                                      ..dispatch(UpdateOrderBy(value))
                                      ..dispatch(const GetPhotos());
                                  }
                                },
                              );
                            },
                          ).toList(),
                        );
                      },
                    ),
                    ColorContainer(
                      builder: (BuildContext context, String color) {
                        return DropdownButton<String>(
                          onChanged: (String value) {
                            StoreProvider.of<AppState>(context)
                              ..dispatch(UpdateColor(value))
                              ..dispatch(const GetPhotos());
                          },
                          value: color,
                          items: <String>[
                            'any',
                            'black_and_white',
                            'black',
                            'white',
                            'yellow',
                            'orange',
                            'red',
                            'purple',
                            'magenta',
                            'green',
                            'teal',
                            'blue'
                          ].map((String color) {
                            return DropdownMenuItem<String>(
                              child: Text(color),
                              value: color,
                            );
                          }).toList(),
                        );
                      },
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            onChanged: (String value) {
                              StoreProvider.of<AppState>(context).dispatch(UpdateField(value));
                            },
                            decoration: const InputDecoration(
                              hintText: 'Enter a query...',
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            StoreProvider.of<AppState>(context)
                              ..dispatch(UpdateQuery(StoreProvider.of<AppState>(context).state.field))
                              ..dispatch(const GetPhotos());
                          },
                          icon: const Icon(Icons.search),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Builder(
                        builder: (BuildContext context) {
                          if (isLoading) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          if (StoreProvider.of<AppState>(context).state.photos.isEmpty) {
                            return const Center(
                              child: Text('Enter another query'),
                            );
                          }
                          return PhotosContainer(
                            builder: (BuildContext context, BuiltList<Photo> photos) {
                              return Column(
                                children: <Widget>[
                                  Expanded(
                                    child: GridView.builder(
                                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisSpacing: 4.0,
                                        crossAxisSpacing: 4.0,
                                        crossAxisCount: 2,
                                      ),
                                      itemCount: photos.length,
                                      itemBuilder: (BuildContext context, int index) {
                                        final Photo photo = photos[index];
                                        final String color = photo.color;
                                        final String colorHex = color.substring(1, color.length);

                                        return InkWell(
                                          onTap: () async {
                                            StoreProvider.of<AppState>(context).dispatch(SetSelectedPhoto(photo.id));
                                            Navigator.pushNamed(context, '/photoDetail');
                                          },
                                          child: GridTile(
                                            child: Image.network(
                                              photo.urls.regular,
                                              fit: BoxFit.cover,
                                            ),
                                            footer: GridTileBar(
                                              title: Text(
                                                photo.altDescription ?? '',
                                                textScaleFactor: 0.75,
                                                style: TextStyle(
                                                  foreground: Paint()
                                                    ..style = PaintingStyle.stroke
                                                    ..strokeWidth = 1.2
                                                    ..color = Colors.red[700],
                                                ),
                                              ),
                                              backgroundColor: Color(int.tryParse('0xaa$colorHex')),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  //
                                  FlatButton(
                                    child: const Text('Load more'),
                                    onPressed: () => StoreProvider.of<AppState>(context).dispatch(const GetPhotos()),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
