import 'user.dart';

class Comment {
  int? id;
  String? comment;
  User? user;

  Comment({this.id, this.comment, this.user});

  // map json to comment model
  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
        id: json['id'],
        comment: json['comment'],
        user: User(
          id: json['user']['id'],
          name: json['user']['name'],
          image: json['user']['image'],
          phone: json['user']['phone'],
          work: json['user']['work'],
          obs: json['user']['obs'],
          address: json['user']['address'],
        ));
  }
}
