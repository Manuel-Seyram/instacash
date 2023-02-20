import 'package:flutter/foundation.dart' show immutable;
import '../../../../models/user_model.dart';
import 'auth_results.dart';

@immutable
class AuthState {
  const AuthState({
    required this.authResult,
    required this.isLoading,
    required this.id,
    this.user,
  });
  const AuthState.unknown()
      : authResult = null,
        isLoading = false,
        id = null,
        user = null;
  final AuthResult? authResult;
  final bool isLoading;
  final Id? id;
  final User? user;

  AuthState copiedWithIsLoading({required bool isLoading}) {
    return AuthState(authResult: authResult, isLoading: isLoading, id: id, user: user);
  }

  @override
  bool operator ==(covariant AuthState other) {
    return identical(this, other) ||
        (authResult == other.authResult &&
            isLoading == other.isLoading &&
            id == other.id &&
            user == other.user);
  }

  @override
  int get hashCode {
    return Object.hashAll([authResult, isLoading, id, user]);
  }
}
