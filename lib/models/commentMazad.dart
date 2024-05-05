import 'user.dart';

class Commenmaz {
  int? id;
  String? comment;
  User? user;

  Commenmaz({this.id, this.comment, this.user});

  // map json to comment model
  factory Commenmaz.fromJson(Map<String, dynamic> json) {
    return Commenmaz(
        id: json['id'],
        comment: json['commenmaz'],
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
