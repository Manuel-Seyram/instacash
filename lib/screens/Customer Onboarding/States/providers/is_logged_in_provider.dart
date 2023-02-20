import 'package:riverpod/riverpod.dart';

import '../../../../Extras/shared_prefs.dart';

class LoginState extends StateNotifier<bool> {
  LoginState() : super(SharedPrefs.isLoggedIn);
  Future<void> login() async {
    await SharedPrefs.sharedPreferences!.setBool(SharedPrefs.KEY_IS_LOGIN, true);
    state = SharedPrefs.sharedPreferences!.getBool(SharedPrefs.KEY_IS_LOGIN)!;
  }

  Future<void> logout() async {
    await SharedPrefs.sharedPreferences!.setBool(SharedPrefs.KEY_IS_LOGIN, false);
    state = SharedPrefs.sharedPreferences!.getBool(SharedPrefs.KEY_IS_LOGIN)!;
  }
}

final isLoggedInProvider = StateNotifierProvider<LoginState, bool>((ref) {
  return LoginState();
});