import 'dart:convert';
import 'package:meta/meta.dart';
import 'package:http/http.dart';
import 'package:tema1/src/tema06_unsplash_redux/src/models/photo.dart';

class UnsplashApi {
  const UnsplashApi({@required Client client})
      : assert(client != null),
        _client = client;

  final Client _client;

  Future<List<Photo>> getPhotos(
    int page,
    String query,
    String orderBy,
    String color,
  ) async {
    final Uri url = Uri(
      scheme: 'https',
      host: 'api.unsplash.com',
      pathSegments: <String>['search', 'photos'],
      queryParameters: <String, String>{
        'page': '$page',
        'query': query,
        'order_by': orderBy,
        if (color != null && color != 'any') 'color': color,
      },
    );

    final Map<String, String> headers = <String, String>{
      'Authorization': 'Client-ID jBwBkjVPMdhIZUyMDACE0ipi2gUG87toCL5v2QwVGGk'
    };

    final Response response = await _client.get(url, headers: headers);
    print('URL: $url');

    if (response.statusCode != 200) {
      print('Bad request!');
      print('Response status code: ${response.statusCode}');
      print('Response body: ${response.body}  \n\n');
      return null;
    }

    final String body = response.body;

    print('Response body: ${response.body}');

    final List<dynamic> list = jsonDecode(body)['results'];

    return list //
        .map((dynamic json) => Photo.fromJson(json))
        .toList();
  }
}
