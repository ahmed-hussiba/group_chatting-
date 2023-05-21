import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions {
  //keys

  static String userLoggedInKey = "LOGGEDINKEY";
  static String userNameKey = "UserNameKEY";
  static String userEmailKey = "USEREMAILKEY";

  //saving the data to SF

  static Future<bool> saveUserLoggedinStatus(bool isUserLoggedIn) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setBool(userLoggedInKey, isUserLoggedIn);
  }

  static Future<bool> saveUserNameSF(String userName) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userNameKey, userName);
  }

  static Future<bool> saveUserEmailSF(String userEnail) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userEmailKey, userEmailKey);
  }

  //getting the data rom sf

  static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInKey);
  }
}