import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../group/tab_bar.dart';
import '../navbar/navbar.dart';
import '../settings/my_setting.dart';

class Notif extends StatefulWidget {
  const Notif({Key? key}) : super(key: key);

  @override
  _Notif createState() => _Notif();
}

class _Notif extends State<Notif> {
  bool _bool = true;
  bool _bool1 = true;
  bool _bool2 = true;

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
        title: Text('Notification'),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Scene11()),
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
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'images/iimage/notification.png',
              ),
            ),
          ),
          child: ClipRect(
            child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 12 * fem,
                  sigmaY: 12 * fem,
                ),
                child: Stack(
                  children: [
                    const Tabar(),
                    Positioned(
                      top: 190 * fem,
                      right: 20 * fem,
                      child: Container(
                        width: 159 * fem,
                        height: 167 * fem*femHeight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _bool1 = !_bool1;
                                    });
                                  },
                                  child: ClipRect(
                                    child: Container(
                                      width: 50,
                                      height: 50 * fem,
                                      child: AnimatedCrossFade(
                                        firstChild: Image.asset(
                                          'images/icon image/on.png',
                                          width: 159 * fem,
                                          height: 177 * fem,
                                        ),
                                        secondChild: Image.asset(
                                          'images/icon image/off.png',
                                          width: 159 * fem,
                                          height: 177 * fem,
                                        ),
                                        duration: Duration(milliseconds: 0),
                                        crossFadeState: _bool1
                                            ? CrossFadeState.showFirst
                                            : CrossFadeState.showSecond,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120 * fem,
                      right: 20 * fem,
                      child: Container(
                        width: 159 * fem,
                        height: 167 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _bool2 = !_bool2;
                                    });
                                  },
                                  child: ClipRect(
                                    child: Container(
                                      width: 50,
                                      height: 50 * fem,
                                      child: AnimatedCrossFade(
                                        firstChild: Image.asset(
                                          'images/icon image/on.png',
                                          width: 159 * fem,
                                          height: 177 * fem,
                                        ),
                                        secondChild: Image.asset(
                                          'images/icon image/off.png',
                                          width: 159 * fem,
                                          height: 177 * fem,
                                        ),
                                        duration: Duration(milliseconds: 0),
                                        crossFadeState: _bool2
                                            ? CrossFadeState.showFirst
                                            : CrossFadeState.showSecond,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50 * fem,
                      right: 20 * fem,
                      child: Container(
                        width: 159 * fem,
                        height: 167 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _bool = !_bool;
                                    });
                                  },
                                  child: ClipRect(
                                    child: Container(
                                      width: 50,
                                      height: 50 * fem,
                                      child: AnimatedCrossFade(
                                        firstChild: Image.asset(
                                          'images/icon image/on.png',
                                          width: 159 * fem,
                                          height: 177 * fem,
                                        ),
                                        secondChild: Image.asset(
                                          'images/icon image/off.png',
                                          width: 159 * fem,
                                          height: 177 * fem,
                                        ),
                                        duration: Duration(milliseconds: 0),
                                        crossFadeState: _bool
                                            ? CrossFadeState.showFirst
                                            : CrossFadeState.showSecond,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 60 * fem,
                      left: 20 * fem,
                      child: Container(
                        // soundNtb (62:602)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 2 * fem, 155 * fem, 0 * fem),
                        child: Text(
                          'Notifications',
                          style: GoogleFonts.roboto(
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.1725 * ffem / fem,
                            color: Color(0xff373737),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120 * fem,
                      left: 20 * fem,
                      child: Container(
                        // soundNtb (62:602)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 2 * fem, 155 * fem, 0 * fem),
                        child: Text(
                          'Sound',
                          style: GoogleFonts.roboto(
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.1725 * ffem / fem,
                            color: Color(0xff373737),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 190 * fem,
                      left: 20 * fem,
                      child: Container(
                        // soundNtb (62:602)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 2 * fem, 155 * fem, 0 * fem),
                        child: Text(
                          'Vibrate',
                          style: GoogleFonts.roboto(
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.1725 * ffem / fem,
                            color: Color(0xff373737),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
