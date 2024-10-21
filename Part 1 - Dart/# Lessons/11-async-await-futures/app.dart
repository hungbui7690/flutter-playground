/*
  Async - Await - Futures
  - Futures -> like promises in JS 
    -> can have uncompleted or completed state



*/

void main() async {
  // 3a.
  // fetchPost().then((post) {
  //   print(post.title);
  //   print(post.userId);
  // });

  // 3b.
  final post = await fetchPost();
  print(post.title);
  print(post.userId);
}

// 2.
Future<Post> fetchPost() {
  const delay = Duration(seconds: 3);

  // return Future.delayed(delay, () => 'hello world');
  return Future.delayed(delay, () {
    return Post('my post', 1);
  });
}

// 1.
class Post {
  String title;
  int userId;

  Post(this.title, this.userId);
}
