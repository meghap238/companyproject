
import 'package:shared_preferences/shared_preferences.dart';

class LocalData {
  static String valueSharedPreferences = 'deviceId';

// Write DATA
  static Future saveUserData(value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString(valueSharedPreferences, value);
  }
  static Future saveMobileNum(value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setInt('mobile', value);
  }
 static getMobile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return int
    int? intValue = prefs.getInt('mobile');
    return intValue;
  }

  static Future saveToken(value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString('token', value);
  }
  static Future saveUserId(value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString('userId', value);
  }
  static Future<String> loadSavedValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
      String value = prefs.getString(valueSharedPreferences) ?? "";
      return value;// Using ?? "" to handle null case
  }
// Read Data
  static void getUserData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.get(valueSharedPreferences);
    //return d;

    //final prefs = await SharedPreferences.getInstance();
    // String? dvc =   LocalData.getUserData() as String?;
   // String? dvc =  await prefs.getString('deviceId');
  }
}