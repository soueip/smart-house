import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_pfe/notification/notification.dart';

import '../group/tab_bar.dart';
import '../home/home.dart';
import '../navbar/navbar.dart';

class Scene11 extends StatelessWidget {
  const Scene11({super.key});


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
      appBar: AppBar(
        centerTitle: true,
        title: Text('Setting'),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Scene13()),
            );
          },
        ),
      ),
      endDrawer: NavDrawer(),
      body: Container(
        width: double.infinity,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.6),
                BlendMode
                    .dstATop, // Add this line to blend white color with the background image
              ),
              image: const AssetImage(
                'images/iimage/setting.png',
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0 * fem,
                top: 32 * fem,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70 * fem),
                    topRight: Radius.circular(70 * fem),
                  ),
                  child: Container(
                    width: 379 * fem,
                    height: 558 * fem * femHeight,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                        begin: Alignment(0, -1),
                        end: Alignment(0, 1),
                        colors: <Color>[
                          Color(0xcc2b2a29),
                          Color(0xcc0d0c0c),
                          Color(0xcc1b150e),
                          Color(0xcc100e0c)
                        ],
                        stops: <double>[0, 0, 0, 1],
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // search
                          left:  32*fem,
                          top:  66*fem,
                          child:
                          Container(
                            width:  313*fem,
                            height:  49*fem,
                            decoration:  BoxDecoration (
                              border:  Border.all(color: Color(0xffd7914d)),
                              borderRadius:  BorderRadius.circular(50*fem),
                            ), child:
                          Stack(
                            children:  [
                              Positioned(
                                left: 10*fem,
                                top: 10*fem,
                                child: Image.asset('images/icon image/icon search.png'),),
                              Positioned(
                                left: 55*fem,
                                top: 0*fem,
                                child:Text(
                                  // searchbh5 (155:259)
                                  'search',
                                  style: GoogleFonts.inter(
                                    fontSize:  20*ffem,
                                    fontWeight:  FontWeight.w400,
                                    height:  2*ffem/fem,
                                    letterSpacing:  -0.4079999924*fem,
                                    color:  Color(0xff000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ),
                        ),
                        Positioned(
                          left: 160 * fem,
                          top: 28 * fem,
                          child: Container(//frame
                            width: 50 * fem,
                            height: 5 * fem,
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              borderRadius: BorderRadius.circular(40 * fem),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0 * fem,
                          top: 135 * fem,
                        child: Container(
                        width: 649 * fem,
                        height: 280 * fem * femHeight,
                        child: Padding(
                        padding: const EdgeInsets.only(
                        top: 5.0,
                        ),
                        child: SingleChildScrollView(
                        child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Container(
                          width: 900.41 * fem,
                          height: 75 * fem * femHeight,
                          child: Stack(
                            children: [
                              Positioned(
                            // privacysecutritychangeemailorn (155:263)
                            left: 30 * fem,
                            top: 22 * fem,
                            child: Container(
                            width: 30.41 * fem,
                            height: 30.23 * fem,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'images/icon image/setting1.png',
                                ),
                              ),
                            ),
                          ),
                            ),
                              Positioned(
                              // privacysecutritychangeemailorn (155:263)
                              left: 80 * fem,
                              top: 25 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 900 * fem,
                                  height: 19 * fem,
                                  child: Text(
                                    'Account',
                                    style: GoogleFonts.roboto(
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.1725 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                              Positioned(
                                // privacysecutritychangeemailorn (155:263)
                                left: 80 * fem,
                                top: 44 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 224 * fem,
                                    height: 19 * fem,
                                    child: Text(
                                      'Privacy, secutrity, change email or number',
                                      style: GoogleFonts.roboto(
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.536875089 * ffem / fem,
                                        color: Color(0x80ffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                          ),
                          ),
                          Container(
                            width: 900.41 * fem,
                            height: 75 * fem * femHeight,
                            child: Stack(
                              children: [
                                Positioned(
                              // privacysecutritychangeemailorn (155:263)
                              left: 30 * fem,
                              top: 22 * fem,
                              child: Container(
                                  width: 30.41 * fem,
                                  height: 30.23 * fem,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'images/icon image/setting2.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                                Positioned(
                              // privacysecutritychangeemailorn (155:263)
                              left: 80 * fem,
                              top: 25 * fem,
                              child:
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    child: SizedBox(
                                      width: 900 * fem,
                                      height: 19 * fem,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const Notif()),
                                          );
                                        },
                                        splashColor: Colors.red,
                                        child: Text(
                                          'Notification',
                                          style: GoogleFonts.roboto(
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.1725 * ffem / fem,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ),
                                Positioned(
                                  // privacysecutritychangeemailorn (155:263)
                                  left: 80 * fem,
                                  top: 44 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 224 * fem,
                                      height: 19 * fem,
                                      child: Text(
                                        'Message, group & call ',
                                        style: GoogleFonts.roboto(
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.536875089 * ffem / fem,
                                          color: Color(0x80ffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 900.41 * fem,
                            height: 75 * fem * femHeight,
                            child: Stack(
                              children: [
                              Positioned(
                              // privacysecutritychangeemailorn (155:263)
                              left: 30 * fem,
                              top: 22 * fem,
                              child: Container(
                                width: 30.41 * fem,
                                height: 30.23 * fem * femHeight,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'images/icon image/setting3.png',
                                    ),
                                  ),
                                ),
                              ),
                              ),
                              Positioned(
                              // privacysecutritychangeemailorn (155:263)
                              left: 80 * fem,
                              top: 25 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 100 * fem,
                                    height: 19 * fem * femHeight,
                                    child: Text(
                                      'Language',
                                      style: GoogleFonts.roboto(
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.1725 * ffem / fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                              ),
                            ),
                              Positioned(
                              // privacysecutritychangeemailorn (155:263)
                              left: 80 * fem,
                              top: 44 * fem,
                              child: Align(
                                  child: SizedBox(
                                    width: 224 * fem,
                                    height: 19 * fem * femHeight,
                                    child: Text(
                                      'English',
                                      style: GoogleFonts.roboto(
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.536875089 * ffem / fem,
                                        color: Color(0x80ffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ],
                            ),
                          ),
                          Container(
                            width: 900.41 * fem,
                            height: 75 * fem * femHeight,
                            child: Stack(
                              children: [
                                Positioned(
                              // privacysecutritychangeemailorn (155:263)
                              left: 30 * fem,
                              top: 22 * fem,
                              child: Container(
                                width: 30.41 * fem,
                                height: 30.23 * fem,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'images/icon image/setting4.png',
                                    ),
                                  ),
                                ),
                              ),

                              ),
                                Positioned(
                                  // privacysecutritychangeemailorn (155:263)
                                  left: 80 * fem,
                                  top: 25 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 100 * fem,
                                      height: 19 * fem,
                                      child: Text(
                                        'Wi-Fi',
                                        style: GoogleFonts.roboto(
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.1725 * ffem / fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                              // privacysecutritychangeemailorn (155:263)
                              left: 80 * fem,
                              top: 44 * fem,
                              child: Align(
                                  child: SizedBox(
                                    width: 224 * fem,
                                    height: 19 * fem,
                                    child: Text(
                                      'Not connected  >',
                                      style: GoogleFonts.roboto(
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.536875089 * ffem / fem,
                                        color: Color(0x80ffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              ],
                            ),
                          ),
                          Container(
                            width: 900.41 * fem,
                            height: 70 * fem * femHeight,
                            child: Stack(
                              children: [
                              Positioned(
                              // privacysecutritychangeemailorn (155:263)
                              left: 30 * fem,
                              top: 20 * fem,
                              child: Container(
                              width: 33.41 * fem,
                              height: 33.23 * fem,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'images/icon image/setting5.png',
                                  ),
                                ),
                              ),
                            ),
                              ),
                              Positioned(
                              // privacysecutritychangeemailorn (155:263)
                              left: 80 * fem,
                              top: 25 * fem,
                              child: Align(
                              child: SizedBox(
                                width: 100 * fem,
                                height: 19 * fem,
                                child: Text(
                                  'Sound',
                                  style: GoogleFonts.roboto(
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.1725 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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
                ),
              ),
              const Tabar(),
            ],
          ),
        ),
      ),
    );
  }
}


