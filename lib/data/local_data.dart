
import 'package:shared_preferences/shared_preferences.dart';

class LocalData {
  static String valueSharedPreferences = 'deviceId';

// Write DATA
  static Future saveUserData(value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString(valueSharedPreferences, value);
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