// ignore_for_file: use_full_hex_values_for_flutter_colors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:place_holder_app/features/initial/controller/initial_controller.dart';


class InitialPage extends StatefulWidget {
  Map<String, dynamic> mapArg;
  InitialPage({
    Key? key,
    required this.mapArg,
  }) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  final controller = Get.find<InitialController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Obx(() => NavigationBar(
              backgroundColor: const Color(0XFFFF6BBDEFB),
              destinations: const [
                NavigationDestination(
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 35,
                    ),
                    label: 'Home'),
                NavigationDestination(
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 35,
                    ),
                    label: 'Id único'),
                NavigationDestination(
                    icon: Icon(
                      Icons.list_alt,
                      color: Colors.white,
                      size: 35,
                    ),
                    label: 'Lista de Id'),
              ],
              selectedIndex: controller.indexNavigation.value,
              onDestinationSelected: (index) {
                controller.indexNavigation.value = index;
              },
            )),
        body: Obx(
          () => controller.screen(widget.mapArg['user'],
              widget.mapArg['listUser'])[controller.indexNavigation.value],
        ));
  }
}
