import 'package:instacash/models/user_model.dart';

class UserDetails {
  List<User>? user;

  UserDetails({this.user});

  UserDetails.fromJson(Map<String, dynamic> json) {
    if (json['userdetails']!= null) {
      user = <User>[];
      json['userdetails'].forEach((v) {
        user!.add(User.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (user != null) {
      data['userdetails'] = user!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}