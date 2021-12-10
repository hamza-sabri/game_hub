import 'package:flutter/material.dart';
import 'package:game_hub/modules/languages.dart';
import 'package:game_hub/views/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Get.deviceLocale,
      getPages: [
        GetPage(
          name: '/home',
          page: () => Home(),
          // binding: HomeBinding(),
        ),
      ],
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
    );
  }
}
