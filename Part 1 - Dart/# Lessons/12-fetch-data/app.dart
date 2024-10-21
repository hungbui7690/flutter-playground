/*
  Fetching Data from an API
  - https://pub.dev/packages/http
    -> similar to npm -> package manager

  1. create pubspec.yaml
  2. install: dart pub add http


*/

import 'dart:convert' as convert; // turn json into a map
import 'package:http/http.dart' as http;

void main() async {
  final post = await fetchPost();
  print(post.title);
  print(post.userId);
}

class Post {
  String title;
  int userId;

  Post(this.title, this.userId);
}

fetchPost() async {
  var url = Uri.https('jsonplaceholder.typicode.com', '/posts/1');
  final res = await http.get(url);

  // var data = convert.jsonDecode(res.body) as Map<String, dynamic>;
  Map<String, dynamic> data = convert.jsonDecode(res.body);
  return Post(data['title'], data['userId']);
}
