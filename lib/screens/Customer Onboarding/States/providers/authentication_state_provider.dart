import 'package:riverpod/riverpod.dart';

import '../state_model/authentication_state.dart';
import '../state_notifiers/authentication_state_notifier.dart';

final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>(
  (ref) => AuthStateNotifier(ref),
);
