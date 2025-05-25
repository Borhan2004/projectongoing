import 'package:create_project_via_mvvm/repositories/login_repository.dart';
import 'package:create_project_via_mvvm/utils/utils.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final _api = LoginRepository();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text,
    };
    _api
        .loginApi(data)
        .then((value) {
          loading.value = false;
          if (value['error'] == 'user not found') {
            Utils.showSnackBar(Get.context!, value['error']);
          } else {
            Utils.showSnackBar(Get.context!, 'loginscfl'.tr);
          }
        })
        .onError((error, stackTrace) {
          loading.value = false;
          Utils.showSnackBar(Get.context!, 'internet_exception'.tr);
        });
  }
}
