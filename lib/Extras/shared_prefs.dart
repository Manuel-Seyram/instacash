import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static SharedPreferences? sharedPreferences;

  static Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  //USER KEYS
  // ignore: constant_identifier_names
  static const String KEY_IS_LOGIN = "key-user-is-logged-in";
  //static const String KEY_ON_BOARDED = "key-has-viewed-onboarding";
  // ignore: constant_identifier_names
  static const String KEY_USER_ID = "key-user-id";


  //IS LOGGED IN
  static set isLoggedIn(bool loggedIn) {
    sharedPreferences!.setBool(KEY_IS_LOGIN, loggedIn);
  }

  static bool get isLoggedIn => sharedPreferences!.getBool(KEY_IS_LOGIN) ?? false;



  // USER ID
  static set userID(int? id) {
    id != null ? sharedPreferences!.setInt(KEY_USER_ID, id) : null;
  }

  static int? get userID => sharedPreferences!.getInt(KEY_USER_ID);

//LOGOUT
  static Future<bool> logOut() async {
    return await sharedPreferences!.clear();
  }
}
