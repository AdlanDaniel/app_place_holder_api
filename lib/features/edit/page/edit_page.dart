// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:place_holder_app/features/edit/controller/edit_controller.dart';

import 'package:place_holder_app/features/repository/models/user.dart';

class EditPage extends StatefulWidget {
  User user;

  EditPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final controller = Get.find<EditController>();

  @override
  void initState() {
    controller.infoFields(widget.user);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina de Edição '),
      ),
      body: Container(
        child: Column(
          children: [
            Text('Id: ${widget.user.id.toString()}'),
            TextFormField(
                controller: controller.userIdEC,
                decoration: InputDecoration(labelText: 'UserId')),
            TextFormField(
              controller: controller.titleEC,
              decoration: InputDecoration(labelText: 'Título'),
            ),
            TextFormField(
              controller: controller.bodyEC,
              decoration: InputDecoration(labelText: 'Corpo'),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Salvar Alterações'))
          ],
        ),
      ),
    );
  }
}
