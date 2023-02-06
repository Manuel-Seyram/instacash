class Validators {
  static bool validPassword(String passwordText) {
    RegExp regex = RegExp(
        r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&^#;_+-])[A-Za-z\d@$!%*?&^#;_+-]{8,}$");
    return regex.hasMatch(passwordText);
  }

  static bool validPasswordLength(String passwordText) {
    return passwordText.length >= 8;
  }

  static bool validUpperCase(String passwordText) {
    RegExp regex = RegExp(r"^(?=.*[A-Z])");
    return regex.hasMatch(passwordText);
  }

  static bool validLowerCase(String passwordText) {
    RegExp regex = RegExp(r"^(?=.*[a-z])");
    return regex.hasMatch(passwordText);
  }

  static bool validNumber(String passwordText) {
    RegExp regex = RegExp(r"^(?=.*\d)");
    return regex.hasMatch(passwordText);
  }

  static bool validSpecialCharacters(String passwordText) {
    RegExp regex = RegExp(r"^(?=.*[@$!%*?&^#;_+-])");
    return regex.hasMatch(passwordText);
  }

  static bool validName(String nameText) {
    return nameText.length >= 3;
  }

  static bool validPhoneNumber(String phoneNumber) {
    RegExp regex = RegExp(r"^[0-9]{9,}$");
    return regex.hasMatch(phoneNumber);
  }

  static bool validEmail(String emailText) {
    RegExp regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return regex.hasMatch(emailText);
  }
}
