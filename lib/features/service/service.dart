// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:place_holder_app/features/repository/models/repository.dart';

import '../repository/models/user.dart';

class ServiceApi {
  Repository repository;
  ServiceApi({
    required this.repository,
  });
  Future<void> addItem(User user) async {
    await repository.addItem(user);
  }

  Future<List> multiInfoGet() async {
    return await repository.multiInfoGet();
  }
  Future<User> singleInfo() async {
    return await repository.singleInfo();
  }
}
