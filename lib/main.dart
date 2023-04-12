import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:place_holder_app/features/add_item/page/add_item_page.dart';
import 'package:place_holder_app/features/bindings/initial_binding/initil_binding.dart';
import 'package:place_holder_app/features/detals/page/detal_page.dart';
import 'package:place_holder_app/features/edit/page/edit_page.dart';
import 'package:place_holder_app/features/initial/page/initial_page.dart';

import 'package:place_holder_app/features/repository/models/user.dart';
import 'package:place_holder_app/features/splash_screen/page/splash_screen_page.dart';
import 'package:place_holder_app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBinding(),
      initialRoute: Routes.splashScreen,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case Routes.splashScreen:
            return MaterialPageRoute(
                builder: (context) => const SplashScreen());
          case Routes.initialPag:
            final args = settings.arguments as Map<String, dynamic>;
            return MaterialPageRoute(
                builder: (context) => InitialPage(
                      mapArg: args,
                    ));

          case Routes.detalPage:
            final args = settings.arguments as User;
            return MaterialPageRoute(
                builder: (context) => DetalPage(user: args));
          case Routes.editPage:
            final args = settings.arguments as User;
            return MaterialPageRoute(
                builder: (context) => EditPage(user: args));
          case Routes.addItemPage:
            return MaterialPageRoute(builder: (context) => const AddItemPage());
        }
      },
    );
  }
}
