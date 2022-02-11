import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:monstran/app/custom/material_color.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      theme: ThemeData(
        primaryColor: Color(0xFF55A169),
        primarySwatch: createMaterialColor(Color(0xFF55A169))
      ),
      initialRoute: Routes.LOGIN,
      getPages: AppPages.routes,
    );
  }
}