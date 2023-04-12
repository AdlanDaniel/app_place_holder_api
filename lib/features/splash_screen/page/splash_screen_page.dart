import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:place_holder_app/features/splash_screen/controller/splash_screen_controller.dart';
import 'package:place_holder_app/routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final controller = Get.find<SplashScreenController>();
  // @override
  // void initState() {
  //   SchedulerBinding.instance.addPostFrameCallback((timeStamp) async {
  //     final user = await controller.singleInfo();
  //     final listUser = await controller.multiInfoGet();
  //     await Future.delayed(const Duration(seconds: 5));
  //     Navigator.pushNamed(context, Routes.initialPag,
  //         arguments: {'user': user, 'listUser': listUser});
  //   });

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color(0XFFFF6BBDEFB),
      child: Center(
          child: Image.asset(
        'assets/images/download.png',
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      )),
    ));
  }
}
