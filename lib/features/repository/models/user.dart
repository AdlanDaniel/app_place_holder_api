// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  int? userId;
  int? id;
  String? title;
  String? body;
  User({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  User.fromMap(Map<String, dynamic> map) {
    userId = map['userId'];
    id = map['id'];
    title = map['title'];
    body = map['body'];
  }
  factory User.fromJson(String json) {
    final map = jsonDecode(json);
    return User.fromMap(map);
  }
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {};
    map['userId'] = userId;
    map['id'] = id;
    map['title'] = title;
    map['body'] = body;
    return map;
  }

  String toJson() => jsonEncode(toMap());
}
