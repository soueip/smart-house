import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../group/tab_bar.dart';
import '../navbar/navbar.dart';

class Scene13 extends StatelessWidget {
  const Scene13({Key? key}) : super(key: key);

  void signUserOut() {
    FirebaseAuth.instance.signOut(); }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 377.0; // Define your new base width here
    double baseHeight = 667.0; // Define your new base height here
    double fem = MediaQuery.of(context).size.width / baseWidth; // Calculate fem based on the new base width
    double scaleFactorWidth = MediaQuery.of(context).size.width / baseWidth; // Calculate scaling factor for width
    double scaleFactorHeight = MediaQuery.of(context).size.height / baseHeight; // Calculate scaling factor for height
    double ffem = fem * 0.97; // Calculate ffem based on fem and 0.97 factor


    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Home'),
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: signUserOut, // Make sure signUserOut is defined as a function
            icon: Icon(Icons.logout), // Use Icon(Icons.logout) to create an Icon widget
          ),
        ),

        endDrawer: NavDrawer(),
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
                  'images/iimage/home.png',
                ),
              ),
            ),
            child: Stack(
              children: [
                //up
                Positioned(
                  left: 12 * fem,
                  top: 35 * fem,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 8 * fem,
                        sigmaY: 8 * fem,
                      ),
                      child: Align(
                        child: SizedBox(
                          width: 353 * fem,
                          height: 160 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15 * fem),
                              border: Border.all(color: Color(0xffffffff)),
                              color: Color(0x42000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // avghousetemp9P3 (8:149)
                Positioned(
                  left: 30 * fem,
                  top: 137 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 130 * fem,
                      height: 19 * fem,
                      child: Text(
                        'Avg House Temp',
                        style: GoogleFonts.roboto(
                          fontSize: 17 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.1725 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                // outsidetempCcD (8:150)
                Positioned(
                  left: 223.0001831055 * fem,
                  top: 137 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 110 * fem,
                      height: 19 * fem,
                      child: Text(
                        'Outside Temp',
                        style: GoogleFonts.roboto(
                          fontSize: 17 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.1725 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                // humidity4eR (8:151)
                Positioned(
                  left: 56 * fem,
                  top: 55 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 66 * fem,
                      height: 19 * fem,
                      child: Text(
                        'Humidity',
                        style: GoogleFonts.roboto(
                          fontSize: 17 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.1725 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                // activedevicesWWR (8:152)
                Positioned(
                  left: 215.0001831055 * fem,
                  top: 55 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 110 * fem,
                      height: 19 * fem,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Text(
                          'Active Devices ',
                          style: GoogleFonts.roboto(
                            fontSize: 17 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.1725 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // rectangle12va9 (8:153)
                Positioned(
                  left: 179.0001831055 * fem,
                  top: 35 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 1 * fem,
                      height: 159 * fem,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                // rectangle13R17 (8:154)
                Positioned(
                  left: 13 * fem,
                  top: 116 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 353.01 * fem,
                      height: 1 * fem,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // tfP (8:156)
                  left: 66.0001831055 * fem,
                  top: 80 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 54 * fem,
                      height: 30 * fem,
                      child: Text(
                        '46 %',
                        style: GoogleFonts.roboto(
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.1725 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // group4YV3 (8:157)
                  left: 239 * fem,
                  top: 70 * fem,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 15 * fem,
                      height: 30 * fem,
                      child: Center(
                        child: Text(
                          '1',
                          style: GoogleFonts.roboto(
                            fontSize: 21 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.1725 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // group2mMo (8:160)
                  left: 67.0001831055 * fem,
                  top: 155 * fem,
                  child: Container(
                    width: 58.37 * fem,
                    height: 30 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          // s9w (8:161)
                          '18',
                          style: GoogleFonts.roboto(
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.1725 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                        Container(
                          // autogroupak2ho3b (4Ctf7hckhNB4a8xcSgAk2H)
                          padding: EdgeInsets.fromLTRB(
                              2.37 * fem, 0 * fem, 0 * fem, 0 * fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // ellipse5HjT (8:163)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 5 * fem, 1 * fem, 0 * fem),
                                width: 9 * fem,
                                height: 9 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.5 * fem),
                                  border: Border.all(color: Color(0xffffffff)),
                                ),
                              ),
                              Text(
                                // cP1o (8:162)
                                'C',
                                style: GoogleFonts.roboto(
                                  fontSize: 19 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.1725 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // group27Ch (8:165)
                  left: 255 * fem,
                  top: 155 * fem,
                  child: Container(
                    width: 58.37 * fem,
                    height: 30 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          // o5X (8:166)
                          '31',
                          style: GoogleFonts.roboto(
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.1725 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                        Container(
                          // autogroup1ebfL5T (4CtfcbxGAbewTPyKnV1Ebf)
                          padding: EdgeInsets.fromLTRB(
                              2.37 * fem, 0 * fem, 0 * fem, 0 * fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // ellipse5eM3 (8:168)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 5 * fem, 1 * fem, 0 * fem),
                                width: 9 * fem,
                                height: 9 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.5 * fem),
                                  border: Border.all(color: Color(0xffffffff)),
                                ),
                              ),
                              Text(
                                // cMFT (8:167)
                                'C',
                                style: GoogleFonts.roboto(
                                  fontSize: 19 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.1725 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //down
                Positioned(
                  // iphone142zU5 (166:334)
                  left: 0 * fem,
                  bottom: -60 * fem,
                  child: Container(
                    width: 380 * fem,
                    height: 400 * fem,
                    decoration: BoxDecoration(
                      color: Color(0x59211d1d),
                      borderRadius: BorderRadius.circular(77 * fem),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(77 * fem),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 18 * fem,
                          sigmaY: 18 * fem,
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 80*fem,
                              top: 5*fem,
                              child: Container(
                                // group655A9K (8:207)
                                width: 200 * fem,
                                height: 255 * fem,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image:
                                    AssetImage('images/icon image/Group 667.png'),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0*fem,
                              top: 130*fem,
                              child: Container(
                                // group655A9K (8:207)
                                width: 500 * fem,
                                height: 250 * fem,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image:
                                    AssetImage('images/icon image/Group.png'),
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
              ],
            ),
          ),
        ));
  }
}
