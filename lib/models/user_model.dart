import '../screens/Customer Onboarding/States/state_model/auth_results.dart';

typedef Id = int;

class UserData {
  UserData({
    AuthResult? authResult,
    String? message,
    this.user,
  })  : authResult = authResult ?? AuthResult.failure,
        message = message ?? "Processing";
  User? user;
  String? message;
  AuthResult? authResult;
  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        message: json['message'],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user == null ? null : user!.toJson(),
      };
}

class User {
  User({
    this.id,
    this.accountNo,
    this.active,
    this.activationDate,
    this.firstname,
    this.middlename,
    this.lastname,
    this.displayName,
    this.mobileNo,
    this.emailAddress,
    this.dateOfBirth,
    n,
    this.isStaff,
    this.officeId,
    this.officeName,
    this.savingsAccountId,
    this.savingsProductId,
    this.savingsProductName,
  });
  Id? id;
  String? accountNo;
  bool? active;
  List<int>? activationDate;
  String? firstname;
  String? middlename;
  String? lastname;
  String? displayName;
  String? mobileNo;
  String? emailAddress;
  List<int>? dateOfBirth;
  bool? isStaff;
  int? officeId;
  String? officeName;
  int? savingsAccountId;
  int? savingsProductId;
  String? savingsProductName;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['userdetails']["id"],
        accountNo: json['userdetails']["accountNo"],
        active: json['userdetails']["active"],
        activationDate: json['userdetails']["activationDate"] == null
            ? []
            : List<int>.from(json['userdetails']["activationDate"]!.map((x) => x)),
        firstname: json['userdetails']["firstname"],
        middlename: json['userdetails']["middlename"],
        lastname: json['userdetails']["lastname"],
        displayName: json['userdetails']["displayName"],
        mobileNo: json['userdetails']["mobileNo"],
        emailAddress: json['userdetails']["emailAddress"],
        dateOfBirth: List<int>.from(json['userdetails']["dateOfBirth"].map((x) => x)),
        isStaff: json['userdetails']["isStaff"],
        officeId: json['userdetails']["officeId"],
        officeName: json['userdetails']["officeName"],
        savingsAccountId: json['userdetails']["savingsAccountId"],
        savingsProductId: json['userdetails']["savingsProductId"],
        savingsProductName: json['userdetails']["savingsProductName"],
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        "id": id,
        "accountNo": accountNo,
        "active": active,
        "activationDate": activationDate == null
            ? []
            : List<dynamic>.from(activationDate!.map((x) => x)),
        "firstname": firstname,
        "middlename": middlename,
        "lastname": lastname,
        "displayName": displayName,
        "mobileNo": mobileNo,
        "emailAddress": emailAddress,
        "dateOfBirth": List<dynamic>.from(dateOfBirth!.map((x) => x)),
        "isStaff": isStaff,
        "officeId": officeId,
        "officeName": officeName,
        "savingsAccountId": savingsAccountId,
        "savingsProductId": savingsProductId,
        "savingsProductName": savingsProductName,
      };

  @override
  bool operator ==(covariant User other) {
    return identical(this, other) || (id == other.id);
  }

  @override
  int get hashCode => Object.hash(id, emailAddress);

  @override
  String toString() =>
      "User(id: $id, accountNo: $accountNo, active: $active, activationDate: ${activationDate == null ? [] : List<dynamic>.from(activationDate!.map((x) => x))}, firstname: $firstname, middlename: $middlename, lastname: $lastname, displayName: $displayName, mobileNo: $mobileNo, emailAddress: $emailAddress, dateOfBirth: ${List<dynamic>.from(dateOfBirth!.map((x) => x))}, isStaff: $isStaff, officeId: $officeId, officeName: $officeName, savingsAccountId: $savingsAccountId, savingsProductId: $savingsProductId, savingsProductName: $savingsProductName,)";
}
