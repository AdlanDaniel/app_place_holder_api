// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:place_holder_app/features/repository/models/user.dart';

class DetalPage extends StatefulWidget {
  User user;
  DetalPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  State<DetalPage> createState() => _DetalPageState();
}

class _DetalPageState extends State<DetalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0XFFFF6BBDEFB),
            )),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Card(
          child: ListTile(
            title: CircleAvatar(
              radius: 60,
              backgroundColor: const Color(0XFFFF6BBDEFB),
              child: Text(
                widget.user.id.toString(),
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
                const Text('USER ID :',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    )),
                const SizedBox(height: 10),
                Text(widget.user.userId.toString(),
                    style: const TextStyle(fontSize: 17)),
                const SizedBox(height: 35),
                const Text('TÍTULO :',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    )),
                const SizedBox(height: 10),
                Text(widget.user.title ?? 'Nao possui titulo',
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
                  widget.user.body ?? 'Nao possui corpo',
                  style: const TextStyle(fontSize: 17),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
