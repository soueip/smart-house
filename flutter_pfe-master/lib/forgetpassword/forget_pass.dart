import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../login/welcome.dart';

class Sceneee extends StatefulWidget {
  Function()? onTap;

  Sceneee({super.key,
    required this.onTap});

  @override
  State<Sceneee> createState() => _SceneeeState();
}

class _SceneeeState extends State<Sceneee> {
  final emailController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
  Future passwordReset() async{
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
          email: emailController.text.trim());
      showDialog(context: context, builder: (context) {
        return AlertDialog(
          content: Text('Password reset link sent! check your email'),
        );
      },
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(context: context, builder: (context) {
        return AlertDialog(
          content: Text(e.message.toString()),
        );
      }
      );
    }
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
                  'images/iimage/Pool house.png',
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
                        height: 450 * fem,
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
                                    border:
                                    Border.all(color: Color(0xffffffff)),
                                    color: Color(0x59211d1d),
                                    borderRadius:
                                    BorderRadius.circular(24 * fem),
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
                                            'Forget your \npassword ?',
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
                                        left: 10 * fem,
                                        top: 160 * fem,
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              10 * fem, 54 * fem, 10.94 * fem),
                                          child: Text('Please enter the email address\n you would like your password reset\n information sent to',
                                            style: GoogleFonts.inter(
                                              fontSize: 17 * ffem,
                                              fontWeight: FontWeight.w800,
                                              height: 1.2125 * ffem / fem,
                                              fontStyle: FontStyle.italic,
                                              color: const Color(0xFFD8914D),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0 * fem,
                                        top: 230 * fem,
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
                                              autofillHints: [],
                                              decoration:
                                              const InputDecoration(
                                                labelText:
                                                'Email',
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
                                        left: 90 * fem,
                                        top: 330 * fem,
                                        child:
                                        Container(
                                          child: MaterialButton(
                                            onPressed: passwordReset,
                                            child: const Text('Request reset password'),
                                            elevation: 10,
                                            splashColor: Color(0x5D6978),
                                            color: Color(0xFFD8914D),
                                            height: 50,
                                            minWidth: 200,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

                                          ),
                                        ),),
                                      Positioned(
                                        left: 90 * fem,
                                        top: 350 * fem,
                                        child:
                                        Container(
                                          margin: EdgeInsets.fromLTRB(15 * fem,
                                              35 * fem, 0 * fem, 10.94 * fem),
                                          child: Positioned(
                                              left: 0 * fem,
                                              top: 163.0586595535 * fem,
                                              child: TextButton(
                                                onPressed: () {
                                                  // Navigate to the `Scene` screen when the button is pressed
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => Scene(onTap: () {},)),
                                                  );
                                                },
                                                style: TextButton.styleFrom(
                                                  primary: Colors.white, // set the text color to white
                                                ),
                                                child: Text(
                                                  "Back to login", // set the button text
                                                  style: GoogleFonts.inter(
                                                    fontSize: 20 * ffem, // set the font size using `ffem`
                                                    color: const Color(0xffffffff), // set the text color to white
                                                  ),
                                                ),
                                              )

                                          ),
                                        ),),
                                    ],
                                  ),
                                )))))
              ],
            )),
      ),
    );
  }
}
