import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  final String uid;
  DatabaseMethods({required this.uid});

  final CollectionReference userCollection =
  FirebaseFirestore.instance.collection("users smart home");

  Future UpdateUserData(
      String userName,
      String email,
      String password,
      int phone,
      DateTime birthday,
      String profilePic) async {
    return await userCollection.doc(uid).set({
      "userName": userName,
      "email": email,
      "password": password,
      "phone": phone,
      "birthday": birthday,
      "profilePic": profilePic,
    });
  }

  updateProfile(String userName, String email, String password, int phone, DateTime birthday) {
    return FirebaseFirestore.instance
        .collection("users smart home")
        .doc(uid)
        .update({
      'userName': userName,
      'email': email,
      'password': password,
      'phone': phone,
      'birthday': Timestamp.fromDate(birthday),
    })
        .then((value) => print("User Updated"))
        .catchError((error) => print("Failed to update user: $error"));
  }


}