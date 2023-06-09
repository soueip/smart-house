import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_pfe/devices/my_devices.dart';

import '../bathroom/bath_room.dart';
import '../bedroom/bed_room.dart';
import '../group/tab_bar.dart';
import '../home/home.dart';
import '../livingroom/living_room.dart';
import '../navbar/navbar.dart';

class Scene6 extends StatelessWidget {
  const Scene6({Key? key}) : super(key: key);

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
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Rooms'),
          backgroundColor: Colors.transparent,
          elevation: 0,
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
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'images/iimage/room.png',
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    // autogroupdjxxVRd (4CtmzRL483DspT1vgMDJXX)
                    width: 1045 * fem,
                    height: 666 * fem * femHeight,
                    child: Stack(
                      children: [
                        Positioned(
                          // frame3658BJT (107:373)
                          left: 40 * fem,
                          top: 20 * fem,
                          child: Container(
                            width: 286 * fem,
                            height: 63 * fem,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffffffff)),
                              gradient: const LinearGradient(
                                begin: Alignment(0, -1),
                                end: Alignment(0, 1),
                                colors: <Color>[
                                  Color(0xe5323534),
                                  Color(0xe569614c)
                                ],
                                stops: <double>[0.38, 0.953],
                              ),
                              borderRadius: BorderRadius.circular(30 * fem),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 80 * fem,
                                  top: 20 * fem,
                                  child: Container(
                                    // roomsZrj (107:393)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      'Rooms',
                                      style: GoogleFonts.inter(
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Positioned(
                                        left: 18 * fem,
                                        top: 8 * fem,
                                        child: Image.asset(
                                            'images/icon image/8room.png')),
                                    Positioned(
                                      left: 36 * fem,
                                      top: 20 * fem,
                                      child: Container(
                                        // roomsZrj (107:393)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                        child: Text(
                                          '3',
                                          style: GoogleFonts.inter(
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2125 * ffem / fem,
                                            color: Color(0xffffffff),
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
                        Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 120 * fem,
                              child: Container(
                                width: 380 * fem,
                                height: 900*fem*femHeight,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(60 * fem),
                                  gradient: const LinearGradient(
                                    begin: Alignment(0, -1),
                                    end: Alignment(0, 1),
                                    colors: <Color>[
                                      Color(0xe5323534),
                                      Color(0xe569614c)
                                    ],
                                    stops: <double>[0.38, 0.953],
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(155 * fem,
                                          15 * fem, 161 * fem, 45 * fem),
                                      width: 50* fem,
                                      height: 3 * fem,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffffffff),
                                        borderRadius:
                                        BorderRadius.circular(40 * fem),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 255 * fem * femHeight,
                                      width: 380 * fem,
                                      // Add SingleChildScrollView here
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            40 * fem,
                                            0 * fem,
                                            0 * fem,
                                            0 * fem),
                                        width: 382,
                                        height: 380*fem*femHeight,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0 * fem,
                                              top: -10 * fem,
                                              child: Container(
                                                width: 349 * fem,
                                                height: 270 * fem*femHeight,
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                    top: 12.0,
                                                    right: 50.0,
                                                  ),
                                                  child:
                                                  SingleChildScrollView(
                                                    // Add SingleChildScrollView here
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center,
                                                      children: [
                                                        Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                  .only(
                                                                  bottom:
                                                                  40.0,
                                                                  right:
                                                                  30.0,
                                                                  left:
                                                                  30.0),
                                                              child:
                                                              Positioned(
                                                                // image7fYy (180:692)
                                                                left: 0,
                                                                top:
                                                                -6.129699707 *
                                                                    fem,
                                                                child:
                                                                Align(
                                                                  child:
                                                                  SizedBox(
                                                                    width: 110.37 *
                                                                        fem,
                                                                    height: 180.13 *
                                                                        fem,
                                                                    child:
                                                                    InkWell(
                                                                      onTap: () {
                                                                        Navigator.push(context, MaterialPageRoute(builder: (context) => Scene5()));
                                                                      },
                                                                      child: Container(
                                                                        decoration:
                                                                        BoxDecoration(
                                                                          borderRadius:
                                                                          BorderRadius.circular(30 * fem),
                                                                          image:
                                                                          const DecorationImage(
                                                                            image: AssetImage('images/iimage/bed room.png'),
                                                                            fit: BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                        Stack(
                                                                          children: [
                                                                            Positioned(
                                                                              // rectangle240r29 (107:442)
                                                                              left: 0 * fem,
                                                                              top: 80 * fem,
                                                                              child: Align(
                                                                                child: SizedBox(
                                                                                  width: 110.37 * fem,
                                                                                  height: 100.13 * fem,
                                                                                  child: Container(
                                                                                    decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.circular(30 * fem),
                                                                                      gradient: const LinearGradient(
                                                                                        begin: Alignment(0, -1),
                                                                                        end: Alignment(0, 1),
                                                                                        colors: <Color>[
                                                                                          Color(0x00373737),
                                                                                          Color(0xad202020),
                                                                                          Color(0xbc000000)
                                                                                        ],
                                                                                        stops: <double>[
                                                                                          0,
                                                                                          0.421,
                                                                                          1
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Positioned(
                                                                              // image7fYy (180:692)
                                                                              left: 24,
                                                                              top: 120.129699707 * fem,
                                                                              child: Align(
                                                                                child: SizedBox(
                                                                                  width: 100.37 * fem,
                                                                                  height: 50.13 * fem,
                                                                                  child: Container(
                                                                                    child: Text(
                                                                                      'Bedroom',
                                                                                      style: GoogleFonts.inter(
                                                                                        color: const Color(0xffffffff),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Positioned(
                                                                              // image7fYy (180:692)
                                                                              left: 44,
                                                                              top: 140.129699707 * fem,
                                                                              child: Align(
                                                                                child: SizedBox(
                                                                                  width: 30.37 * fem,
                                                                                  height: 30.13 * fem,
                                                                                  child: Container(
                                                                                    decoration: const BoxDecoration(
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: AssetImage('images/icon image/cli_bedroom1.png'),
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
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                  .only(
                                                                  bottom:
                                                                  40.0),
                                                              child:
                                                              Positioned(
                                                                // image7fYy (180:692)
                                                                left: 10,
                                                                top:
                                                                100.129699707 *
                                                                    fem,
                                                                child:
                                                                Align(
                                                                  child:
                                                                  SizedBox(
                                                                    width: 110.37 *
                                                                        fem,
                                                                    height: 180.13 *
                                                                        fem,
                                                                    child:
                                                                    InkWell(
                                                                      onTap: () {
                                                                        Navigator.push(context, MaterialPageRoute(builder: (context) => Scene12()));
                                                                      },
                                                                      child:
                                                                      Container(
                                                                        decoration:
                                                                        BoxDecoration(
                                                                          borderRadius:
                                                                          BorderRadius.circular(30 * fem),
                                                                          image:
                                                                          const DecorationImage(
                                                                            image: AssetImage('images/iimage/bathroom.png'),
                                                                            fit: BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                        Stack(
                                                                          children: [
                                                                            Positioned(
                                                                              // rectangle240r29 (107:442)
                                                                              left: 0 * fem,
                                                                              top: 80 * fem,
                                                                              child: Align(
                                                                                child: SizedBox(
                                                                                  width: 110.37 * fem,
                                                                                  height: 100.13 * fem,
                                                                                  child: Container(
                                                                                    decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.circular(30 * fem),
                                                                                      gradient: const LinearGradient(
                                                                                        begin: Alignment(0, -1),
                                                                                        end: Alignment(0, 1),
                                                                                        colors: <Color>[
                                                                                          Color(0x00373737),
                                                                                          Color(0xad202020),
                                                                                          Color(0xbc000000)
                                                                                        ],
                                                                                        stops: <double>[
                                                                                          0,
                                                                                          0.421,
                                                                                          1
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Positioned(
                                                                              // image7fYy (180:692)
                                                                              left: 24,
                                                                              top: 120.129699707 * fem,
                                                                              child: Align(
                                                                                child: SizedBox(
                                                                                  width: 100.37 * fem,
                                                                                  height: 50.13 * fem,
                                                                                  child: Container(
                                                                                    child: Text(
                                                                                      'Bathroom',
                                                                                      style: GoogleFonts.inter(
                                                                                        color: const Color(0xffffffff),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Positioned(
                                                                              // image7fYy (180:692)
                                                                              left: 44,
                                                                              top: 140.129699707 * fem,
                                                                              child: Align(
                                                                                child: SizedBox(
                                                                                  width: 30.37 * fem,
                                                                                  height: 30.13 * fem,
                                                                                  child: Container(
                                                                                    decoration: const BoxDecoration(
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: AssetImage('images/icon image/cil_bathroom1.png'),
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
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                  .only(
                                                                  bottom:
                                                                  40.0,
                                                                  right:
                                                                  30.0,
                                                                  left:
                                                                  30.0),
                                                              child:
                                                              Positioned(
                                                                // image7fYy (180:692)
                                                                left: 0,
                                                                top:
                                                                -6.129699707 *
                                                                    fem,
                                                                child:
                                                                Align(
                                                                  child:
                                                                  SizedBox(
                                                                    width: 110.37 *
                                                                        fem,
                                                                    height: 180.13 *
                                                                        fem,
                                                                    child:
                                                                    InkWell(
                                                                      onTap: () {
                                                                        Navigator.push(context, MaterialPageRoute(builder: (context) => Scene10()));
                                                                      },
                                                                      child:
                                                                      Container(
                                                                        decoration:
                                                                        BoxDecoration(
                                                                          borderRadius:
                                                                          BorderRadius.circular(30 * fem),
                                                                          image:
                                                                          const DecorationImage(
                                                                            image: AssetImage('images/iimage/living room.png'),
                                                                            fit: BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                        Stack(
                                                                          children: [
                                                                            Positioned(
                                                                              // rectangle240r29 (107:442)
                                                                              left: 0 * fem,
                                                                              top: 80 * fem,
                                                                              child: Align(
                                                                                child: SizedBox(
                                                                                  width: 110.37 * fem,
                                                                                  height: 100.13 * fem,
                                                                                  child: Container(
                                                                                    decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.circular(30 * fem),
                                                                                      gradient: const LinearGradient(
                                                                                        begin: Alignment(0, -1),
                                                                                        end: Alignment(0, 1),
                                                                                        colors: <Color>[
                                                                                          Color(0x00373737),
                                                                                          Color(0xad202020),
                                                                                          Color(0xbc000000)
                                                                                        ],
                                                                                        stops: <double>[
                                                                                          0,
                                                                                          0.421,
                                                                                          1
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Positioned(
                                                                              // image7fYy (180:692)
                                                                              left: 24,
                                                                              top: 120.129699707 * fem,
                                                                              child: Align(
                                                                                child: SizedBox(
                                                                                  width: 100.37 * fem,
                                                                                  height: 50.13 * fem,
                                                                                  child: Container(
                                                                                    child: Text(
                                                                                      'Living room',
                                                                                      style: GoogleFonts.inter(
                                                                                        color: const Color(0xffffffff),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Positioned(
                                                                              // image7fYy (180:692)
                                                                              left: 44,
                                                                              top: 140.129699707 * fem,
                                                                              child: Align(
                                                                                child: SizedBox(
                                                                                  width: 30.37 * fem,
                                                                                  height: 30.13 * fem,
                                                                                  child: Container(
                                                                                    decoration: const BoxDecoration(
                                                                                      image: DecorationImage(
                                                                                        fit: BoxFit.cover,
                                                                                        image: AssetImage('images/icon image/cil_sofa1.png'),
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
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                  .only(
                                                                  bottom:
                                                                  40.0),
                                                              child:
                                                              Positioned(
                                                                // image7fYy (180:692)
                                                                left: 10,
                                                                top:
                                                                100.129699707 *
                                                                    fem,
                                                                child:
                                                                Align(
                                                                  child: SizedBox(
                                                                      width: 110.37 * fem,
                                                                      height: 180.13 * fem,
                                                                      child: Stack(children: [
                                                                        Container(
                                                                          decoration: BoxDecoration(
                                                                            border: Border.all(color: const Color(0xe5ffffff)),
                                                                            borderRadius: BorderRadius.circular(30 * fem),
                                                                            color: const Color(0xffffffff),
                                                                            gradient: const LinearGradient(
                                                                              begin: Alignment(0, -1),
                                                                              end: Alignment(0, 1),
                                                                              colors: <Color>[
                                                                                Color(0xe5323534),
                                                                                Color(0xe569614c)
                                                                              ],
                                                                              stops: <double>[
                                                                                0.38,
                                                                                0.953
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width: double.infinity, // set width to match parent
                                                                          height: double.infinity, // set height to match parent
                                                                          child: Stack(
                                                                            alignment: Alignment.topRight,
                                                                            children: [
                                                                              Positioned(
                                                                                top: 150.0,
                                                                                right: 25.0,
                                                                                child: Text(
                                                                                  'add room...',
                                                                                  style: GoogleFonts.inter(
                                                                                    fontSize: 12 * ffem,
                                                                                    color: const Color(0xffffffff),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Stack(
                                                                                children: [
                                                                                  Positioned(
                                                                                    top: 60.0,
                                                                                    right: 35.0,
                                                                                    child: FloatingActionButton(
                                                                                      onPressed: () {
                                                                                        showModalBottomSheet(
                                                                                          context: context,
                                                                                          shape: const RoundedRectangleBorder(
                                                                                            borderRadius: BorderRadius.vertical(top: Radius.circular(60)),
                                                                                          ),
                                                                                          builder: (context) => Stack(
                                                                                            children: [
                                                                                              Container(
                                                                                                decoration: const BoxDecoration(
                                                                                                  borderRadius: BorderRadius.only(topRight: Radius.circular(60.0), topLeft: Radius.circular(60.0)),
                                                                                                  color: Color(0xffffffff),
                                                                                                  gradient: LinearGradient(
                                                                                                    begin: Alignment(0, -1),
                                                                                                    end: Alignment(0, 1),
                                                                                                    colors: <Color>[
                                                                                                      Color(0xe5323534),
                                                                                                      Color(0xe569614c)
                                                                                                    ],
                                                                                                    stops: <double>[0.38, 0.953],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Positioned(
                                                                                                top: -230 * fem,
                                                                                                left: 20 * fem,
                                                                                                child: Container(
                                                                                                  // addroomV7Z (166:349)
                                                                                                  margin: EdgeInsets.fromLTRB(0 * fem, 3.17 * fem, 28 * fem, 0 * fem),
                                                                                                  child: Text(
                                                                                                    'Add room: ',
                                                                                                    style: GoogleFonts.inter(
                                                                                                      fontSize: 40 * ffem,
                                                                                                      fontWeight: FontWeight.w400,
                                                                                                      height: 9.56 * ffem / fem,
                                                                                                      color: const Color(0xffd7914d),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Positioned(
                                                                                                left: 12 * fem,
                                                                                                top: 70 * fem,
                                                                                                child: Container(
                                                                                                  width: 349 * fem,
                                                                                                  height: 350 * fem,
                                                                                                  child: Padding(
                                                                                                    padding: const EdgeInsets.only(bottom: 20.0),
                                                                                                    child: TextFormField(
                                                                                                      autofillHints: [],
                                                                                                      decoration: const InputDecoration(
                                                                                                        labelText: 'Give a name to your room',
                                                                                                        labelStyle: TextStyle(color: Colors.grey, fontSize: 25),
                                                                                                        enabledBorder: UnderlineInputBorder(
                                                                                                          borderSide: BorderSide(color: Color(0xFFD8914D), width: 3.0),
                                                                                                        ),
                                                                                                      ),
                                                                                                      style: const TextStyle(color: Colors.white), // set the text color to white
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Positioned(
                                                                                                top: 170 * fem,
                                                                                                left: 20 * fem,
                                                                                                child: Container(
                                                                                                  // choseaphotototheroomukw (176:353)
                                                                                                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 88 * fem, 35.5 * fem),
                                                                                                  constraints: BoxConstraints(
                                                                                                    maxWidth: 243 * fem,
                                                                                                  ),
                                                                                                  child: Text(
                                                                                                    'chose a photo \n\n to the room:',
                                                                                                    style: GoogleFonts.inter(
                                                                                                      fontSize: 21 * ffem,
                                                                                                      fontWeight: FontWeight.w400,
                                                                                                      height: 0.9333333333 * ffem / fem,
                                                                                                      color: const Color(0xffffffff),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Positioned(
                                                                                                left: 200 * fem,
                                                                                                top: 20 * fem,
                                                                                                child: Container(
                                                                                                  width: 349 * fem,
                                                                                                  height: 350 * fem,
                                                                                                  // autogroupyovxBCf (4Ctq5AXZ6oUq6Rb5p1yoVX)
                                                                                                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),

                                                                                                  child: Row(
                                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                    children: [
                                                                                                      Positioned(
                                                                                                        left: 0 * fem,
                                                                                                        top: 170 * fem,
                                                                                                        child: Container(
                                                                                                          // group34423gfD (197:262)
                                                                                                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 10 * fem, 0 * fem),
                                                                                                          width: 58 * fem,
                                                                                                          height: 51 * fem,
                                                                                                          child: Image.asset(
                                                                                                            'images/icon image/icon gallery.png',
                                                                                                            width: 58 * fem,
                                                                                                            height: 51 * fem,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Positioned(
                                                                                                        left: 20 * fem,
                                                                                                        top: 170 * fem,
                                                                                                        child: Container(
                                                                                                          // group34423gfD (197:262)
                                                                                                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 82 * fem, 0 * fem),
                                                                                                          width: 58 * fem,
                                                                                                          height: 51 * fem,
                                                                                                          child: Image.asset(
                                                                                                            'images/icon image/icon camera.png',
                                                                                                            width: 58 * fem,
                                                                                                            height: 51 * fem,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Positioned(
                                                                                                bottom: 30 * fem,
                                                                                                left: 165 * fem,
                                                                                                child: FloatingActionButton(
                                                                                                  onPressed: () {
                                                                                                    showModalBottomSheet(
                                                                                                      context: context,
                                                                                                      shape: const RoundedRectangleBorder(
                                                                                                        borderRadius: BorderRadius.vertical(top: Radius.circular(60)),
                                                                                                      ),
                                                                                                      builder: (context) => Stack(
                                                                                                        children: [
                                                                                                          Container(
                                                                                                            decoration: const BoxDecoration(
                                                                                                              borderRadius: BorderRadius.only(topRight: Radius.circular(60.0), topLeft: Radius.circular(60.0)),
                                                                                                              color: Color(0xffffffff),
                                                                                                              gradient: LinearGradient(
                                                                                                                begin: Alignment(0, -1),
                                                                                                                end: Alignment(0, 1),
                                                                                                                colors: <Color>[Color(0xe5323534), Color(0xe569614c)],
                                                                                                                stops: <double>[0.38, 0.953],
                                                                                                              ),
                                                                                                            ),
                                                                                                            child: Stack(
                                                                                                              children: [
                                                                                                                Positioned(
                                                                                                                  left: 20 * fem,
                                                                                                                  top: 80 * fem,
                                                                                                                  child: Container(
                                                                                                                    // nowyoucanadddevicesorsensorsto (180:655)
                                                                                                                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 28 * fem, 88 * fem),
                                                                                                                    constraints: BoxConstraints(
                                                                                                                      maxWidth: 304 * fem,
                                                                                                                    ),
                                                                                                                    child: Text(
                                                                                                                      ' now you can add devices or\n\n sensors to your room...',
                                                                                                                      style: GoogleFonts.inter(
                                                                                                                        fontSize: 20 * ffem,
                                                                                                                        fontWeight: FontWeight.w400,
                                                                                                                        height: 0.7 * ffem / fem,
                                                                                                                        color: Color(0xffffffff),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                                Positioned(
                                                                                                                  bottom: 120 * fem,
                                                                                                                  left: 165 * fem,
                                                                                                                  child: FloatingActionButton(onPressed: () {
                                                                                                                    showModalBottomSheet(isScrollControlled: true, context: context, builder: (context) => Scene9());
                                                                                                                  },
                                                                                                                    backgroundColor: Colors.orangeAccent,
                                                                                                                    child: const Icon(Icons.done),
                                                                                                                  ),),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                  backgroundColor: Colors.orangeAccent,
                                                                                                  child: const Icon(Icons.done),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ); // <-- Add the missing closing parenthesis here
                                                                                      },
                                                                                      backgroundColor: Colors.orangeAccent,
                                                                                      child: const Icon(Icons.add),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        )
                                                                      ])),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
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
                                  ],
                                ),
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                  const Tabar(),
                ],
              ),
            )));
  }
}
