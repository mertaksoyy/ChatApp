import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions {
  //For Shared Preferences for user control

//keys
  static String userLoggedInKey = "LOGGEDINKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";

//saving the data to SF
//getting the data from SF
  static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInKey); //return bool value for user loggin
  }
}
