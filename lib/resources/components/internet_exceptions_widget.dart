import 'package:create_project_via_mvvm/resources/Colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InternetExceptionsWidget extends StatefulWidget {
  final VoidCallback onPress;

  const InternetExceptionsWidget({super.key, required this.onPress});

  @override
  State<InternetExceptionsWidget> createState() =>
      _InternetExceptionsWidgetState();
}

class _InternetExceptionsWidgetState extends State<InternetExceptionsWidget> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: height * .15),
          Icon(Icons.cloud_off, color: AppColor.redColor, size: 41),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text('internet_exception'.tr, textAlign: TextAlign.center),
            ),
          ),
          SizedBox(height: height * .15),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              height: 45,
              width: 160,
              decoration: BoxDecoration(
                color: AppColor.primaryColor.withOpacity(.6),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  'Retry',
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium!.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
