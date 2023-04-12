import 'package:get/get.dart';
import 'package:place_holder_app/features/add_item/controller/add_item_controller.dart';
import 'package:place_holder_app/features/edit/controller/edit_controller.dart';
import 'package:place_holder_app/features/initial/controller/initial_controller.dart';

import 'package:place_holder_app/features/repository/models/repository.dart';
import 'package:http/http.dart' as http;
import 'package:place_holder_app/features/service/service.dart';
import 'package:place_holder_app/features/splash_screen/controller/splash_screen_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RepositoryImpl(restClient: http.Client()));
    Get.put(ServiceApi(repository: Get.find<RepositoryImpl>()));

    Get.lazyPut<SplashScreenController>(
        () => SplashScreenController(serviceApi: Get.find<ServiceApi>()));
    Get.lazyPut<InitialController>(
        () => InitialController(service: Get.find<ServiceApi>()));
    Get.lazyPut<EditController>(
        () => EditController(serviceApi: Get.find<ServiceApi>()));

    Get.lazyPut<AddItemController>(
        () => AddItemController(serviceApi: Get.find<ServiceApi>()));
  }
}
