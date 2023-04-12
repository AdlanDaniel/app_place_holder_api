import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:place_holder_app/features/add_item/controller/add_item_controller.dart';

class AddItemPage extends StatefulWidget {
  const AddItemPage({Key? key}) : super(key: key);

  @override
  State<AddItemPage> createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
  final controller = Get.find<AddItemController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina de Adicao '),
      ),
      body: Container(
        child: Column(
          children: [
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
            ElevatedButton(
                onPressed: () async {
                  controller.addItem();
                },
                child: Text('Adicionar'))
          ],
        ),
      ),
    );
  }
}
