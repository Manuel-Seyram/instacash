class LoginRequestData {
  late final String _username;
  late final String _password;

  LoginRequestData({
    required final String username,
    required final String password,
  })  : _username = username,
        _password = password;

  Map<String, dynamic> toJson() => <String, dynamic>{
        "username": _username,
        "password": _password,
      };
}
