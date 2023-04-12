// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:place_holder_app/features/repository/models/user.dart';

import 'package:place_holder_app/features/service/service.dart';
import 'package:place_holder_app/routes/routes.dart';

class SplashScreenController extends GetxController {
  ServiceApi serviceApi;
  SplashScreenController({
    required this.serviceApi,
  });
  List listUser = [];

  Future<User> singleInfo() async {
    return await serviceApi.singleInfo();
  }

  Future<List> multiInfoGet() async {
    listUser.clear();
    List listMap = await serviceApi.multiInfoGet();
    // listMap.forEach((element) {
    //   listUser.add(User.fromMap(element));
    // });
    for (var element in listMap) {
      listUser.add(User.fromMap(element));
    }

    return listUser;
  }

  @override
  void onInit() async {
    final user = await singleInfo();
    final listUser = await multiInfoGet();
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushNamed(Get.context!, Routes.initialPag,
        arguments: {'user': user, 'listUser': listUser});
    super.onInit();
  }
}
