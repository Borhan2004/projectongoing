import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'email_hint': 'Enter Email',
      'password_hint': 'Enter password',
      'internet_exception':
          "We're unable to show result\nPlease check your network\nConnection.",
      'general_exception':
          "We're unable to process your request.\n Please try again",
      'welcome_back': 'Welcome \n Back',
      'login': 'Login',
      'loginscfl': 'Successfully Logged In',
    },
    'bn_BD': {'email_hint': 'ইমেইল লিখুন'},
    'es_ES': {'email_hint': 'Enigu retpoŝton'},
  };
}
