// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:place_holder_app/features/repository/models/user.dart';

abstract class Repository {
  Future<void> addItem(User user);
  Future<List> multiInfoGet();
  Future<User> singleInfo();
}

class RepositoryImpl implements Repository {
  http.Client restClient;
  RepositoryImpl({
    required this.restClient,
  });

  @override
  Future<void> addItem(User user) async {
    final url = Uri.https('jsonplaceholder.typicode.com', '/posts');
    final response = await http.post(url, body: user.toJson(), headers: {
      'Content-type': 'application/json; charset=UTF-8',
    });
  }

  @override
  Future<List> multiInfoGet() async {
    final url = Uri.https('jsonplaceholder.typicode.com', '/posts');
    final response = await http.get(url);
    List listMap = jsonDecode(response.body);
    return listMap;
  }

  @override
  Future<User> singleInfo() async {
    final url = Uri.https('jsonplaceholder.typicode.com', '/posts/1');
    final response = await http.get(url);
    User user = User.fromJson(response.body);
    return user;
  }
}
