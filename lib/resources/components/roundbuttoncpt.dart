import 'package:create_project_via_mvvm/resources/components/round_button.dart';
import 'package:flutter/material.dart';

class Roundbuttoncpt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TITLE')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: RoundButton(
              onPress: () {},
              title: 'Login',
              width: 200,
              loading: false,
            ),
          ),
          SizedBox(height: 18),
          Center(
            child: RoundButton(
              onPress: () {},
              title: 'Signup',
              width: 200,
              loading: false,
            ),
          ),
        ],
      ),
    );
  }
}
