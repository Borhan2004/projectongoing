import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'email_hint': 'Enter Email',
      'internet_exception':
          "We're unable to show result\nPlease check your data\nConnection",
      'general_exception':
          "We're unable to process your request.\n Please try again",
    },
    'bn_BD': {'email_hint': 'ইমেইল লিখুন'},
    'es_ES': {'email_hint': 'Enigu retpoŝton'},
  };
}
