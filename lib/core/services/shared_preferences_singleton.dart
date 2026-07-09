import 'package:shared_preferences/shared_preferences.dart';

class prehs {
  static late SharedPreferences _instance;

  

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  
  }

  static void setbool(String key, bool value) {
    _instance.setBool(key, value);
  }

  static bool getbool(String key) {
    return _instance.getBool(key) ?? false;
  }
}
