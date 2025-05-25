import 'dart:async';

import 'package:create_project_via_mvvm/data/response/routes/routes_name.dart';
import 'package:get/route_manager.dart';

class SplashServices {
  void isLogin() {
    Timer(const Duration(seconds: 3), () => Get.toNamed(RoutesName.loginView));
  }
}
