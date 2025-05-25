import 'package:create_project_via_mvvm/data/response/routes/routes_name.dart';
import 'package:create_project_via_mvvm/view/login/login_view.dart';
import 'package:create_project_via_mvvm/view/splash_screen.dart';
import 'package:get/route_manager.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(
      name: RoutesName.splashScreen,
      page: () => SplashScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 250),
    ),

    GetPage(
      name: RoutesName.loginView,
      page: () => LoginView(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 250),
    ),
  ];
}
