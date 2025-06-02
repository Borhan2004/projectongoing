import 'package:create_project_via_mvvm/data/response/routes/routes.dart';
import 'package:create_project_via_mvvm/resources/getx_localization/languages.dart';
import 'package:create_project_via_mvvm/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SplashScreen',
      translations: Languages(),
      locale: Locale('en_US'),
      fallbackLocale: Locale('bn_BD'),

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
      ),
      home: SplashScreen(),

      getPages: AppRoutes.appRoutes(),
    );
  }
}
