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
    var sp = await SharedPreferences.getInstance();
    var userLoggedInKey = sp.getString("LOGGEDINKEY");

    if (userLoggedInKey == "LOGGEDINKEY" &&
        userNameKey == "${userNameKey}" &&
        userEmailKey == "${userEmailKey}") {
      return true;
    } else {
      return false;
    }

    //return sp.getBool(userLoggedInKey);
  }
}
