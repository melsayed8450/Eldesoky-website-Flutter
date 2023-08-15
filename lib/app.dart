import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'common/routes/app_pages.dart';
import 'common/routes/app_routes.dart';

class Eldesoky extends StatelessWidget {
  const Eldesoky({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GetMaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
      initialRoute: AppPages.main,
    ));
  }
}
