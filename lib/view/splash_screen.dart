import 'package:create_project_via_mvvm/resources/assets/image_assets.dart';
import 'package:create_project_via_mvvm/resources/components/general_excepton.dart';
import 'package:create_project_via_mvvm/resources/components/internet_exceptions_widget.dart';
import 'package:create_project_via_mvvm/utils/utils.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TITLE')),
      body: GeneralExceptionWidget(onPress: () {}),
    );
  }
}
