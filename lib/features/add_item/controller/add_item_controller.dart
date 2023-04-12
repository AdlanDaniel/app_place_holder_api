// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:place_holder_app/features/repository/models/user.dart';

import 'package:place_holder_app/features/service/service.dart';

class AddItemController extends GetxController {
  ServiceApi serviceApi;
  AddItemController({
    required this.serviceApi,
  });
  TextEditingController userIdEC = TextEditingController();
  TextEditingController titleEC = TextEditingController();
  TextEditingController bodyEC = TextEditingController();

  Future<void> addItem() async {
    User user = User();
    user.userId = int.parse(userIdEC.text);
    user.title = titleEC.text;
    user.body = bodyEC.text;
    await serviceApi.addItem(user);
  }
}
