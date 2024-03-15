class User {
  int? id;
  String? name;
  String? image;
  String? email;
  String? token;
  String? phone;
  String? work;
  String? address;

  User({
    this.id,
    this.name,
    this.image,
    this.email,
    this.token,
    this.phone,
    this.work,
    this.address
  });


  // function to convert json data to user model
  factory User.fromJson(Map<String, dynamic> json){
    return User(
        id: json['user']['id'],
        name: json['user']['name'],
        image: json['user']['image'],
        email: json['user']['email'],
        token: json['token'],
        phone: json['user']['phone'],
        work: json['user']['work'],
        address: json['user']['address'],
    );
  }
}