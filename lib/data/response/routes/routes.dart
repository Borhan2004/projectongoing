import 'package:create_project_via_mvvm/data/response/routes/routes_name.dart';
import 'package:create_project_via_mvvm/view/splash_screen.dart';
import 'package:get/route_manager.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(
      name: RoutesName.splashScreen,
      page: () => SplashScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(microseconds: 250),
    ),
  ];
}
