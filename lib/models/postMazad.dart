import 'user.dart';

class Posmaz {
  int? id;
  String? body;
  String? image;
  int? likesCount;
  int? commentsCount;
  User? user;
  bool? selfLiked;

  Posmaz({
    this.id,
    this.body,
    this.image,
    this.likesCount,
    this.commentsCount,
    this.user,
    this.selfLiked,
  });

// map json to post model

  factory Posmaz.fromJson(Map<String, dynamic> json) {
    return Posmaz(
        id: json['id'],
        body: json['body'],
        image: json['image'],
        likesCount: json['likesmaz_count'],
        commentsCount: json['commentsmaz_count'],
        selfLiked: json['likesmaz'].length > 0,
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
