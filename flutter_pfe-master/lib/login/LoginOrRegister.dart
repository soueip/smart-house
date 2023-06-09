import 'package:flutter/material.dart';
import 'package:flutter_pfe/login/welcome.dart';
import 'package:flutter_pfe/signup/sign_up.dart';




class LoginOrRegisterPage extends  StatefulWidget {
  const LoginOrRegisterPage({Key? key}) : super(key: key);

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {

  //initially show login page
  bool showLoginPage = true;

  //toggle between login and register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return Scene(onTap: togglePages,);
    }
    else {
      return Scenee(onTap: togglePages,);
    }
  }
}
