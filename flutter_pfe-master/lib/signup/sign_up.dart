import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import '../home/home.dart';
import '../login/MyButton.dart';
import '../login/square_tile.dart';
import '../services/auth_service.dart';

class Scenee extends StatefulWidget {
  Function()? onTap;
  Scenee({super.key, required this.onTap});

  @override
  State<Scenee> createState() => _SceneeState();
}

class _SceneeState extends State<Scenee> {
  //text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final userNameController = TextEditingController();
  final phoneController = TextEditingController();
  final birthdayController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    userNameController.dispose();
    phoneController.dispose();
    birthdayController.dispose();
    super.dispose();
  }

  //add user details method
  Future<void> addUserDetails(String uid, String name, String userName, int phone,
      DateTime birthday, String email, String password) async {
    try {
      await FirebaseFirestore.instance.collection('users smart home').doc(uid).set({
        'Name': name,
        'User Name': userName,
        'Phone Number': phone,
        'Birthday': Timestamp.fromDate(birthday),
        'Email': email,
        'Password': password,
      });
      print('Data added successfully!');
    } catch (e) {
      print('Error adding data: $e');
    }
  }


  //sign user up method
  void signUserUp() async {
    //show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    //try creating the user
    try {
      // check if password is confirmed
      if (passwordController.text == confirmPasswordController.text) {
        //create user
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        if(mounted) {
          Navigator.pop(context);
        }
        //add user details
        await addUserDetails(
          FirebaseAuth.instance.currentUser!.uid,
          nameController.text.trim(),
          userNameController.text.trim(),
          int.parse(phoneController.text.trim()),
          DateTime.parse(birthdayController.text.trim()),
          emailController.text.trim(),
          passwordController.text.trim(),
        );


        //pop the loading circle
        if(mounted) {
          Navigator.pop(context);
        }
      } else {
        //pop the loading circle
        Navigator.pop(context);
        //show error message, passwords don't match
        showErrorMessage("Passwords don't match!");
      }
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
    double fem = MediaQuery.of(context).size.width /
        baseWidth; // Calculate fem based on the new base width
    double femHeight = MediaQuery.of(context).size.height /
        baseHeight; // Calculate fem based on the new base height
    double scaleFactorWidth = MediaQuery.of(context).size.width /
        baseWidth; // Calculate scaling factor for width
    double scaleFactorHeight = MediaQuery.of(context).size.height /
        baseHeight; // Calculate scaling factor for height
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
                'images/iimage/signup.png',
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
                  height: 550 * fem,
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
                              margin: EdgeInsets.fromLTRB(
                                  150 * fem, 15 * fem, 161 * fem, 45 * fem),
                              // frame3672uF3 (142:342)
                              width: double.infinity,
                              height: 4 * fem,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                borderRadius: BorderRadius.circular(40 * fem),
                              ),
                            ),
                            Positioned(
                              left: 10 * fem,
                              top: 35 * fem,
                              child: Container(
                                child: Text(
                                  'SIGN UP',
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
                            Container(
                              child: SingleChildScrollView(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 90 * fem, 0 * fem, 0 * fem),
                                  width: 372 * fem,
                                  height: 410 * fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 12 * fem,
                                        top: 0 * fem,
                                        child: Container(
                                          width: 349 * fem,
                                          height: 280 * fem,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 5.0,
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 10.0),
                                                    child: TextFormField(
                                                      controller:
                                                          nameController,
                                                      autofillHints: const [],
                                                      decoration:
                                                          const InputDecoration(
                                                        labelText: 'Name',
                                                        labelStyle: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 25),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xFFD8914D),
                                                              width: 3.0),
                                                        ),
                                                      ),
                                                      style: const TextStyle(
                                                          color: Colors
                                                              .white), // set the text color to white
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 10.0),
                                                    child: TextFormField(
                                                      controller:
                                                          userNameController,
                                                      autofillHints: const [],
                                                      obscureText: false,
                                                      // set the obscureText property to true
                                                      decoration:
                                                          const InputDecoration(
                                                        labelText: 'User name',
                                                        labelStyle: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 25),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xFFD8914D),
                                                              width: 3.0),
                                                        ),
                                                      ),
                                                      style: const TextStyle(
                                                          color: Colors
                                                              .white), // set the text color to white
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 10.0),
                                                    child: TextFormField(
                                                      controller:
                                                          emailController,
                                                      autofillHints: const [],
                                                      obscureText: false,
                                                      // set the obscureText property to true
                                                      decoration:
                                                          const InputDecoration(
                                                        labelText: 'Email',
                                                        labelStyle: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 25),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xFFD8914D),
                                                              width: 3.0),
                                                        ),
                                                      ),
                                                      style: const TextStyle(
                                                          color: Colors.white),
                                                      keyboardType:
                                                          TextInputType
                                                              .emailAddress,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 10.0),
                                                    child: TextFormField(
                                                      controller:
                                                          phoneController,
                                                      autofillHints: const [],
                                                      obscureText: false,
                                                      // set the obscureText property to true
                                                      decoration:
                                                          const InputDecoration(
                                                        labelText:
                                                            'Phone number',
                                                        labelStyle: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 25),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xFFD8914D),
                                                              width: 3.0),
                                                        ),
                                                      ),
                                                      style: const TextStyle(
                                                          color: Colors
                                                              .white), // set the text color to white
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 10.0),
                                                    child: TextFormField(
                                                      controller:
                                                          passwordController,
                                                      autofillHints: const [],
                                                      obscureText: true,
                                                      // set the obscureText property to true
                                                      decoration:
                                                          const InputDecoration(
                                                        labelText: 'Password',
                                                        labelStyle: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 25),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xFFD8914D),
                                                              width: 3.0),
                                                        ),
                                                      ),
                                                      style: const TextStyle(
                                                          color: Colors
                                                              .white), // set the text color to white
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 10.0),
                                                    child: TextFormField(
                                                      controller:
                                                          confirmPasswordController,
                                                      autofillHints: const [],
                                                      obscureText: true,
                                                      // set the obscureText property to true
                                                      decoration:
                                                          const InputDecoration(
                                                        labelText:
                                                            'Confirm password',
                                                        labelStyle: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 25),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xFFD8914D),
                                                              width: 3.0),
                                                        ),
                                                      ),
                                                      style: const TextStyle(
                                                          color: Colors
                                                              .white), // set the text color to white
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 10.0),
                                                    child: TextFormField(
                                                      controller:
                                                          birthdayController,
                                                      autofillHints: const [],
                                                      obscureText: false,
                                                      // set the obscureText property to true
                                                      decoration:
                                                          const InputDecoration(
                                                        labelText: 'Birthday',
                                                        labelStyle: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 25),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xFFD8914D),
                                                              width: 3.0),
                                                        ),
                                                      ),
                                                      style: const TextStyle(
                                                          color: Colors
                                                              .white), // set the text color to white
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                      MyButton(
                                        text: "SIGN UP",
                                        onTap: signUserUp,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 50 * fem,
                              top: 460 * fem,
                              child: Container(
                                width: 500 * fem,
                                height: 48 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    //google button
                                    SquareTile(
                                      imagePath:
                                          'images/iimage/google icon.png',
                                      text: "SIGN UP WITH GOOGLE",
                                      onTap: () =>
                                          AuthService().signInWithGoogle(),
                                    ),
                                    SizedBox(
                                      width: 32 * fem,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              // joinusfAu (4:257)
                              margin: EdgeInsets.fromLTRB(
                                  85.5 * fem, 500 * fem, 63.5 * fem, 0 * fem),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // donthaveanaccountWxD (4:258)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                        child: Text(
                                          'already have an account ?',
                                          style: GoogleFonts.poppins(
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5 * ffem / fem,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: widget.onTap,
                                        child: Text(
                                          'Login now',
                                          style: GoogleFonts.poppins(
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5 * ffem / fem,
                                            color: Colors.blueAccent,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
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
