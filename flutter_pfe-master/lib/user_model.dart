import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String name;
  final String userName;
  final int phoneNumber;
  final DateTime birthday;
  final String email;
  final String password;

  UserModel({
    required this.id,
    required this.email,
    required this.password,
    required this.name,
    required this.userName,
    required this.phoneNumber,
    required this.birthday,
  });

  Map<String, dynamic> toJson() {
    return {
      'Name': name,
      'User Name': userName,
      'Phone Number': phoneNumber,
      'Birthday': Timestamp.fromDate(birthday),
      'Email': email,
      'Password': password,
    };
  }
}
