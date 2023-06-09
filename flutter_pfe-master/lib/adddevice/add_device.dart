import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../devices/my_devices.dart';
import '../group/tab_bar.dart';
import '../navbar/navbar.dart';

class Scene8 extends StatelessWidget {
  const Scene8({Key? key}) : super(key: key);

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
        title: Text('Add device'),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Scene9()),
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
                'images/iimage/add divice.png',
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0 * fem,
                top: 122 * fem,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70 * fem),
                    topRight: Radius.circular(70 * fem),
                  ),
                  child: Container(
                    width: 379 * fem,
                    height: 900 * fem*femHeight,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
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
                          left: 60, // set the left position to 0
                          child: Container(
                            // autogroupqrthKgZ (4CtE1AxhLsrg6dqmtkqRtH)
                            width:  989*fem,
                            child: Text(
                              'Scan the QR code of the device',
                              style: GoogleFonts.poppins(
                                fontSize:  18*ffem,
                                fontWeight:  FontWeight.w400,
                                height:  3*ffem/fem,
                                color:  Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupvwpwZqo (4CtECfdYWCksycHoHqvWPw)
                          margin:  EdgeInsets.fromLTRB(50*fem, 80*fem, 18*fem, 28*fem),
                          width:  290*fem,
                          height:  250*fem,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'images/icon image/scan1.png',
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
