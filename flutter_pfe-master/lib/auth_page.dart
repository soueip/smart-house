import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pfe/home/home.dart';
import 'package:flutter_pfe/login/welcome.dart';

import 'login/LoginOrRegister.dart';

class AuthPage extends  StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          //user is logged in
          if(snapshot.hasData) {
            return const Scene13();
          }
          else {
            return LoginOrRegisterPage();
          }
          //user is not logged in
        }
      ),
    );
  }
}
