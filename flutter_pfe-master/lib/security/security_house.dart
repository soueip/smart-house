import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_pfe/home/home.dart';
import '../devices/my_devices.dart';
import '../group/tab_bar.dart';
import '../navbar/navbar.dart';

const List<String> list = <String>[
  'All device',
  'Device 1',
  'Device 2',
  'Device 3'
];

class Scene7 extends StatefulWidget {
  const Scene7({Key? key}) : super(key: key);
  @override
  _Scene7State createState() => _Scene7State();
}

class _Scene7State extends State<Scene7> {
  String dropdownValue = list.first;
  bool _bool = true;
  bool _bool1 = true;
  bool _bool2 = true;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 377.0; // Define your new base width here
    double baseHeight = 667.0; // Define your new base height here
    double fem = MediaQuery.of(context).size.width / baseWidth; // Calculate fem based on the new base width
    double scaleFactorWidth = MediaQuery.of(context).size.width / baseWidth; // Calculate scaling factor for width
    double scaleFactorHeight = MediaQuery.of(context).size.height / baseHeight; // Calculate scaling factor for height
    double ffem = fem * 0.97; // Calculate ffem based on fem and 0.97 factor


    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Security'),
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
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'images/iimage/security.png',
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Stack(
            children: [
              Positioned(
                  left: 10 * fem,
                  top: 10 * fem,
                  child: Container(
                      width: 350 * fem,
                      height: 90 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffffffff)),
                        color: const Color(0x59211d1d),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24 * fem),
                          bottomLeft: Radius.circular(24 * fem),
                          topRight: Radius.circular(24 * fem),
                          bottomRight: Radius.circular(24 * fem),
                        ),
                      ),
                      child: Container(
                        width: 330 * fem,
                        height: 70 * fem,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        margin: EdgeInsets.only(top: 8.0, bottom: 1.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Wrap(
                            direction: Axis.horizontal,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 0.0, bottom: 0.0),
                                    width: 90 * fem,
                                    height: 90 * fem,
                                  ),
                                  Positioned(
                                    bottom: 30 * fem,
                                    left: 15 * fem,
                                    child: Container(
                                      padding: EdgeInsets.all(4 * fem),
                                      width: 55 * fem,
                                      height: 55 * fem,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xffdcdcdc)),
                                        borderRadius:
                                        BorderRadius.circular(30 * fem),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(30 * fem),
                                        child: Image.asset(
                                          'images/iimage/Pool house.png',
                                          fit: BoxFit.cover,
                                          width: 52 * fem,
                                          height: 52 * fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 13 * fem,
                                    left: 20 * fem,
                                    child: Text(
                                      // camera111V (33:446)
                                      'Camera 1',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 11 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.8545454545 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 0.0, bottom: 0.0),
                                    width: 90 * fem,
                                    height: 90 * fem,
                                  ),
                                  Positioned(
                                    bottom: 30 * fem,
                                    left: 15 * fem,
                                    child: Container(
                                      padding: EdgeInsets.all(4 * fem),
                                      width: 55 * fem,
                                      height: 55 * fem,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xffdcdcdc)),
                                        borderRadius:
                                        BorderRadius.circular(30 * fem),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(30 * fem),
                                        child: Image.asset(
                                          'images/iimage/Pool house.png',
                                          fit: BoxFit.cover,
                                          width: 52 * fem,
                                          height: 52 * fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 13 * fem,
                                    left: 20 * fem,
                                    child: Text(
                                      // camera111V (33:446)
                                      'Camera 2',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 11 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.8545454545 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 0.0, bottom: 0.0),
                                    width: 90 * fem,
                                    height: 90 * fem,
                                  ),
                                  Positioned(
                                    bottom: 30 * fem,
                                    left: 15 * fem,
                                    child: Container(
                                      padding: EdgeInsets.all(4 * fem),
                                      width: 55 * fem,
                                      height: 55 * fem,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xffdcdcdc)),
                                        borderRadius:
                                        BorderRadius.circular(30 * fem),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(30 * fem),
                                        child: Image.asset(
                                          'images/iimage/Pool house.png',
                                          fit: BoxFit.cover,
                                          width: 52 * fem,
                                          height: 52 * fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 13 * fem,
                                    left: 20 * fem,
                                    child: Text(
                                      // camera111V (33:446)
                                      'Camera 3',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 11 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.8545454545 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 0.0, bottom: 0.0),
                                    width: 90 * fem,
                                    height: 90 * fem,
                                  ),
                                  Positioned(
                                    bottom: 30 * fem,
                                    left: 15 * fem,
                                    child: Container(
                                      padding: EdgeInsets.all(4 * fem),
                                      width: 55 * fem,
                                      height: 55 * fem,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xffdcdcdc)),
                                        borderRadius:
                                        BorderRadius.circular(30 * fem),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(30 * fem),
                                        child: Image.asset(
                                          'images/iimage/Pool house.png',
                                          fit: BoxFit.cover,
                                          width: 52 * fem,
                                          height: 52 * fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 13 * fem,
                                    left: 20 * fem,
                                    child: Text(
                                      // camera111V (33:446)
                                      'Camera 4',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 11 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.8545454545 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 0.0, bottom: 0.0),
                                    width: 90 * fem,
                                    height: 90 * fem,
                                  ),
                                  Positioned(
                                    bottom: 30 * fem,
                                    left: 15 * fem,
                                    child: Container(
                                      padding: EdgeInsets.all(4 * fem),
                                      width: 55 * fem,
                                      height: 55 * fem,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xffdcdcdc)),
                                        borderRadius:
                                        BorderRadius.circular(30 * fem),
                                      ),
                                      child: Positioned(
                                        top: 30.0,
                                        left: 60.0,
                                        child: FloatingActionButton(
                                          onPressed: () {
                                            showModalBottomSheet(
                                                isScrollControlled: true,
                                                context: context,
                                                builder: (context) =>
                                                    Scene9()); // <-- Add the missing closing parenthesis here
                                          },
                                          backgroundColor: Colors.white54,
                                          child: const Icon(Icons.add,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 13 * fem,
                                    left: 10 * fem,
                                    child: Text(
                                      // camera111V (33:446)
                                      'Add camera',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 11 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.8545454545 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ))),

              Positioned(
                left: 0 * fem,
                top: 100 * fem,
                child: Container(
                  width: 400 * fem,
                  height: 370*fem,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  margin: EdgeInsets.only(top: 0.0, bottom: 100.0),
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Wrap(
                          direction: Axis.horizontal,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Positioned(
                              right: 10 * fem,
                              top: 180 * fem,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(15*fem, 15*fem , 10*fem, 15*fem),
                                width: 159 * fem,
                                height: 147 * fem,
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
                                              width: double.infinity,
                                              height: 127 * fem,
                                              decoration: BoxDecoration(
                                                border:
                                                Border.all(color: Color(0xffffffff)),
                                                color: Color.fromARGB(86, 0, 0, 0),
                                                borderRadius:
                                                BorderRadius.circular(24 * fem),
                                              ),
                                              child: AnimatedCrossFade(
                                                firstChild: Image.asset(
                                                  'images/icon image/gasalarmoff.png',
                                                  width: 159 * fem,
                                                  height: 177 * fem,
                                                ),
                                                secondChild: Image.asset(
                                                  'images/icon image/gasalarmon.png',
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
                              left: 10 * fem,
                              top: 180 * fem,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(15*fem,15*fem , 20*fem, 15*fem),
                                width: 159 * fem,
                                height: 147 * fem,
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
                                              width: double.infinity,
                                              height: 127 * fem,
                                              decoration: BoxDecoration(
                                                border:
                                                Border.all(color: Color(0xffffffff)),
                                                color: Color.fromARGB(86, 0, 0, 0),
                                                borderRadius:
                                                BorderRadius.circular(24 * fem),
                                              ),
                                              child: AnimatedCrossFade(
                                                firstChild: Image.asset(
                                                  'images/icon image/fieroff.png',
                                                  width: 159 * fem,
                                                  height: 177 * fem,
                                                ),
                                                secondChild: Image.asset(
                                                  'images/icon image/fieron.png',
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
                            Wrap(
                              direction: Axis.vertical,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(0.0),
                                  child: Container(
                                    margin:
                                    EdgeInsets.only(top: 0.0, bottom: 0.0),
                                    width: 500 * fem,
                                    height: 200 * fem,
                                    child: Stack(
                                      children: [
                                        //select
                                        Positioned(
                                          bottom: 0 * fem,
                                          left: 130 * fem,
                                          child: Container(
                                            width: 110 * fem,
                                            height: 35 * fem,
                                            padding: EdgeInsets.fromLTRB(
                                                10 * fem, 0 * fem, 0 * fem, 0 * fem),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              color: Color.fromARGB(86, 0, 0, 0),
                                              border:
                                              Border.all(color: Color.fromARGB(255, 255, 255, 255)),
                                            ),
                                            child: DropdownButton<String>(
                                              value: dropdownValue,
                                              icon: const Icon(
                                                Icons.arrow_downward,
                                                color: Color.fromRGBO(255, 107, 89, 1),
                                              ),
                                              iconSize: 20,
                                              elevation: 10,
                                              style: TextStyle(
                                                color: Color.fromRGBO(255, 107, 89, 1),
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              onChanged: (String? value) {
                                                setState(() {
                                                  dropdownValue = value!;
                                                });
                                              },
                                              items: list.map<DropdownMenuItem<String>>((String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                        //west
                                        Positioned(
                                          left: 123 * fem,
                                          top: 0 * fem,
                                          child: Container(
                                            width: 120 * fem,
                                            height: 298 * fem,
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
                                                          width: double.infinity,
                                                          height: 160 * fem,
                                                          decoration: BoxDecoration(
                                                            border:
                                                            Border.all(color: Color(0xffffffff)),
                                                            color: Color.fromARGB(86, 0, 0, 0),
                                                            borderRadius:
                                                            BorderRadius.circular(50 * fem),
                                                          ),
                                                          child: AnimatedCrossFade(
                                                            firstChild: Image.asset(
                                                              'images/icon image/locked.png',
                                                              width: 110 * fem,
                                                              height: 160 * fem,
                                                            ),
                                                            secondChild: Image.asset(
                                                              'images/icon image/unlocked.png',
                                                              width: 110 * fem,
                                                              height: 160 * fem,
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
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],
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

