// ignore_for_file: public_member_api_docs, sort_constructors_first, use_full_hex_values_for_flutter_colors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:place_holder_app/features/repository/models/user.dart';

import 'package:place_holder_app/features/service/service.dart';
import 'package:place_holder_app/routes/routes.dart';

class InitialController extends GetxController {
  ServiceApi service;
  InitialController({
    required this.service,
  });
  RxInt indexNavigation = 0.obs;
  List listUser = [];

  List<Widget> screen(User user, List listUser) {
    return [
      Center(
        child: Image.asset('assets/images/pagInitial.png'),
      ),
      SafeArea(
        child: Container(
          color: const Color(0XFFFF6BBDEFB),
          padding: const EdgeInsets.all(10),
          child: Card(
            child: ListTile(
              title: CircleAvatar(
                radius: 60,
                backgroundColor: const Color(0XFFFF6BBDEFB),
                child: Text(
                  user.id.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  const Text('TÍTULO :',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      )),
                  const SizedBox(height: 10),
                  Text(user.title ?? 'Nao possui titulo',
                      style: const TextStyle(fontSize: 17)),
                  const SizedBox(height: 35),
                  const Text('CORPO :',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      )),
                  const SizedBox(height: 10),
                  Text(
                    user.body ?? 'Nao possui corpo',
                    style: const TextStyle(fontSize: 17),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      SafeArea(
        child: ListView.builder(
            padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
            itemCount: listUser.length,
            itemBuilder: (context, index) {
              String title = listUser[index].title;
              return Dismissible(
                key: Key(listUser[index].id.toString()),
                direction: DismissDirection.startToEnd,
                background: Container(
                    color: Colors.red,
                    child: Row(
                      children: const [Icon(Icons.delete)],
                    )),
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    Navigator.pushNamed(context, Routes.editPage,
                        arguments: listUser[index]);
                  }
                },
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.detalPage,
                        arguments: listUser[index]);
                  },
                  onLongPress: () {
                    Navigator.pushNamed(context, Routes.editPage,
                        arguments: listUser[index]);
                  },
                  child: Card(
                    shape: const RoundedRectangleBorder(
                        side:
                            BorderSide(color: Color(0xFFFF6BBDEFB), width: 1)),
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Color(0xFFFF6BBDEFB),
                        radius: 20,
                        child: Icon(Icons.message),
                      ),
                      contentPadding:
                          const EdgeInsets.only(bottom: 5, top: 5, left: 7.5),
                      title: Text(
                        title.toUpperCase(),
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              );
            }),
      )
    ];
  }
}
