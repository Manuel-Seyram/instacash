import 'package:flutter/foundation.dart';
import 'package:instacash/API/services_authentication.dart';
import 'package:riverpod/riverpod.dart';

import '../../login/Models/login_model.dart';
import '../providers/is_logged_in_provider.dart';
import '../state_model/auth_results.dart';
import '../state_model/authentication_state.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier(this.ref) : super(const AuthState.unknown());
  final Ref ref;
  final _authenticator = API();

   void disableLoading() {
    state = state.copiedWithIsLoading(isLoading: false);
  }

  void dismissError() {
    state = const AuthState.unknown();
  }

  Future<void> logOutUser() async {
    state = state.copiedWithIsLoading(isLoading: true);
    // await deleteUserInfo(userId: SharedPrefs.userID!);
    final loginController = ref.read(isLoggedInProvider.notifier);
    loginController.logout();
    state = const AuthState.unknown();
  }

  Future<void> loginUser({required LoginRequestData requestBody}) async {
    state = state.copiedWithIsLoading(isLoading: true);
    if (kDebugMode) {
      print("this loading");
    }
    final results = await _authenticator.loginUser(requestBody: requestBody);

    if (results.authResult == AuthResult.success) {
      // await saveUserInfo(user: results.user!);
      final loginController = ref.read(isLoggedInProvider.notifier);
      loginController.login();
    }
    state = AuthState(
        authResult: results.authResult, isLoading: false, id: null, user: results.user);
    if (kDebugMode) {
      print("results:${results.authResult}, \n loading: ${state.isLoading}");
    }
  }
}
