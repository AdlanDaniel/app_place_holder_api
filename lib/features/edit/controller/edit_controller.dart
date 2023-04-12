// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:place_holder_app/features/repository/models/user.dart';

import 'package:place_holder_app/features/service/service.dart';

class EditController extends GetxController {
  ServiceApi serviceApi;
  EditController({
    required this.serviceApi,
  });
  TextEditingController userIdEC = TextEditingController();
  TextEditingController titleEC = TextEditingController();
  TextEditingController bodyEC = TextEditingController();

  infoFields(User user) {
    userIdEC.text = user.userId.toString();
    titleEC.text = user.title ?? null.toString();
    bodyEC.text = user.body ?? null.toString();
  }
}
