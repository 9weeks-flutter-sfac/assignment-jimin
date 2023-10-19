// ignore_for_file: public_member_api_docs, sort_constructors_first
class Post {
  int userId;
  int id;
  String title;
  String body;
  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      userId: map['userId'] as int,
      id: map['id'] as int,
      title: map['title'] as String,
      body: map['body'] as String,
    );
  }

  @override
  String toString() {
    return 'Post: $body | $title';
  }
}

// Future<Post?> getData(int userId) async {
//   Dio dio = Dio();
//   var url = 'https://jsonplaceholder.typicode.com/post/$userId';
//   var res = await dio.get(url);
//   if (res.statusCode == 200) {
//     return Post.fromMap(res.data);
//   }
// }

// Future<List<Post>> resData() async {
//   Dio dio = Dio();
//   var url = 'https://jsonplaceholder.typicode.com/posts';
//   var res = await dio.get(url);
//   if (res.statusCode == 200) {
//     print(res.data.runtimeType);
//     var data = List<Map<String, dynamic>>.from(res.data);
//     return data.map((e) => Post.fromMap(e)).toList();
//   }
//   return [];
// }

// void main() async {
//   var res = await resData();
//   print(res);
//   print(res.length);
// }
