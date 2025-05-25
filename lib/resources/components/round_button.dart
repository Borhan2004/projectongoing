import 'package:create_project_via_mvvm/resources/Colors/app_colors.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key? key,
    this.buttonColor = AppColor.PrimaryButtonColor,
    this.textColor = AppColor.primaryTextColor,
    required this.loading,
    required this.title,
    this.height = 58,
    this.width = 68,
    required this.onPress,
  }) : super(key: key);

  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onPress;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(49),
        ),
        child:
            loading
                ? Center(child: CircularProgressIndicator())
                : Center(
                  child: Text(
                    title,
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium!.copyWith(color: Colors.white),
                  ),
                ),
      ),
    );
  }
}
