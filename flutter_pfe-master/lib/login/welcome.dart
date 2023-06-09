import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pfe/login/square_tile.dart';
import 'package:flutter_pfe/services/auth_service.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../forgetpassword/forget_pass.dart';
import '../home/home.dart';
import '../signup/sign_up.dart';
import 'MyButton.dart';

class Scene extends StatefulWidget {
  Function()? onTap;
  Scene({super.key, required this.onTap});

  @override
  State<Scene> createState() => _SceneState();
}

class _SceneState extends State<Scene> {
  //text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    //show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    //try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      //pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //pop the loading circle
      Navigator.pop(context);
      //show error message
      showErrorMessage(e.code);
    }
  }
  //error message to user
  void showErrorMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.black,
            title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
            ),
          );
        },
    );
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 377.0; // Define your new base width here
    double baseHeight = 667.0; // Define your new base height here
    double fem = MediaQuery.of(context).size.width / baseWidth; // Calculate fem based on the new base width
    double femHeight = MediaQuery.of(context).size.height / baseHeight; // Calculate fem based on the new base height
    double scaleFactorWidth = MediaQuery.of(context).size.width / baseWidth; // Calculate scaling factor for width
    double scaleFactorHeight = MediaQuery.of(context).size.height / baseHeight; // Calculate scaling factor for height
    double ffem = fem * 0.97; // Calculate ffem based on fem and 0.97 factor



    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'images/iimage/welcome.png',
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0 * fem,
                bottom: 0 * fem,
                child: Container(
                  width: 376 * fem,
                  height: 500 * fem,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24 * fem),
                      topRight: Radius.circular(24 * fem),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 18 * fem,
                        sigmaY: 18 * fem,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffffffff)),
                          color: Color(0x59211d1d),
                          borderRadius: BorderRadius.circular(24 * fem),
                        ),
                        child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(150 * fem,
                                    15 * fem, 161 * fem, 45 * fem),
                                // frame3672uF3 (142:342)
                                width: double.infinity,
                                height: 4 * fem,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius:
                                  BorderRadius.circular(40 * fem),
                                ),
                              ),
                              Positioned(
                                left: 10 * fem,
                                top: 40 * fem,
                                child: Container(
                                  child: Text(
                                    'WELCOME',
                                    style: GoogleFonts.abhayaLibre(
                                      fontSize: 50 * ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.2125 * ffem / fem,
                                      fontStyle: FontStyle.italic,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0 * fem,
                                top: 90 * fem,
                                child:
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      20 * fem,
                                      10 * fem,
                                      30 * fem,
                                      21 * fem),
                                  width: 320 * fem,
                                  height: 100 * fem,
                                  child: Padding(
                                    padding: const EdgeInsets
                                        .only(
                                        bottom:
                                        20.0),
                                    child:
                                    TextFormField(
                                      controller: emailController,
                                      obscureText:false,
                                      autofillHints: [],
                                      decoration: const InputDecoration(
                                        labelText: 'Email',
                                        labelStyle: TextStyle(color: Colors.white, fontSize: 25),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xFFD8914D), width: 3.0),
                                        ),
                                      ),
                                      style: const TextStyle(color: Colors.white),
                                      keyboardType: TextInputType.emailAddress, // set the keyboard type to email address
                                    )


                                  ),
                                ),),
                              Positioned(
                                left: 0 * fem,
                                top: 165 * fem,
                                child:
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      20 * fem,
                                      10 * fem,
                                      30 * fem,
                                      21 * fem),
                                  width: 320 * fem,
                                  height: 100 * fem,
                                  child: Padding(
                                    padding: const EdgeInsets
                                        .only(
                                        bottom:
                                        20.0),
                                    child:
                                    TextFormField(
                                      controller: passwordController,
                                      obscureText: true, // Set this property to true to hide the text
                                      autofillHints: [],
                                      decoration:
                                      const InputDecoration(
                                        labelText:
                                        'Password',
                                        labelStyle: TextStyle(
                                            color:
                                            Colors.white,
                                            fontSize: 25),
                                        enabledBorder:
                                        UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFD8914D),
                                              width: 3.0),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          color:
                                          Colors.white), // set the text color to white
                                    ),
                                  ),
                                ),),
                              Positioned(
                                left: 15 * fem,
                                top: 235 * fem,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Sceneee(onTap: () {},)),
                                    );
                                  },
                                  style: TextButton.styleFrom(primary: Colors.red),
                                  child: const Text("Forget your password ?"),
                                ),
                              ),


                              const SizedBox(height: 25),
                              MyButton(
                                text: "SIGN IN",
                                onTap: signUserIn,
                              ),

                              Positioned(
                                left: 140 * fem,
                                top: 365 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 99*fem,
                                    height: 18*fem,
                                    child: Text(
                                      'OR',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: 15*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 50 * fem,
                                top: 395 * fem,
                                child: Container(
                                  width: 500*fem,
                                  height: 48*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      
                                      //google button
                                      SquareTile(
                                          imagePath: 'images/iimage/google icon.png',
                                        text: "SIGN IN WITH GOOGLE",
                                          onTap: () => AuthService().signInWithGoogle(),),
                                      SizedBox(
                                        width: 32*fem,
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // joinusfAu (4:257)
                                margin: EdgeInsets.fromLTRB(85.5*fem, 448*fem, 63.5*fem, 0*fem),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom (
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // donthaveanaccountWxD (4:258)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                                          child: Text(
                                            'Don’t have an account ?',
                                            style: GoogleFonts.poppins(
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5*ffem/fem,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: widget.onTap,
                                          child: Text(
                                            'Register',
                                            style: GoogleFonts.poppins(
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5*ffem/fem,
                                              color: Colors.blueAccent,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
