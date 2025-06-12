import 'package:create_project_via_mvvm/resources/components/round_button.dart';
import 'package:create_project_via_mvvm/utils/utils.dart';
import 'package:create_project_via_mvvm/view/home/homeScreen.dart';
import 'package:create_project_via_mvvm/view_models/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginVM = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('login'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: loginVM.emailController.value,
                    focusNode: loginVM.emailFocusNode.value,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        Utils.showSnackBar(context, 'email_hint'.tr);
                        return 'email_hint'.tr;
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) {
                      Utils.fieldFocusChange(
                        context,
                        loginVM.emailFocusNode.value,
                        loginVM.passwordFocusNode.value,
                      );
                    },
                    decoration: InputDecoration(
                      hintText: 'email_hint'.tr,
                      suffixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 13),

                  TextFormField(
                    controller: loginVM.passwordController.value,
                    focusNode: loginVM.passwordFocusNode.value,
                    obscureText: true,
                    obscuringCharacter: '.',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        Utils.showSnackBar(context, 'password_hint'.tr);
                        return 'password_hint'.tr;
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) {},
                    decoration: InputDecoration(
                      hintText: 'password_hint'.tr,
                      suffixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 31),
            Obx(
              () => RoundButton(
                width: 200,
                title: 'login'.tr,
                loading: loginVM.loading.value,
                onPress: () {
                  // Example: Navigate to HomeScreen or perform login
                  // Uncomment and use the following for actual login logic:
                  // if (_formKey.currentState?.validate() ?? false) {
                  //   loginVM.loginApi();
                  // }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
