import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../adddevice/add_device.dart';
import '../group/tab_bar.dart';
import '../home/home.dart';
import '../navbar/navbar.dart';

class Scene9 extends StatelessWidget {
  const Scene9({Key? key}) : super(key: key);

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
        title: Text('Devices'),
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
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'images/iimage/devices.png',
              ),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Stack(children: [
              const Tabar(),
              Positioned(
                left: 55*fem,
                bottom: 100*fem*femHeight,
                child:
                Container(
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Scene8()),
                      );
                    },
                    child: Text('Add device',
                        style: GoogleFonts.roboto(
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.1725 * ffem / fem,)
                    ),
                    elevation: 10,
                    splashColor: Color(0x5D6978),
                    color: Color(0xFFD8914D),
                    height: 70,
                    minWidth: 300,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

                  ),
                ),
              ),
              Container(
                width: 900 * fem,
                height: 650 * fem,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.only(left: 20.0),
                margin: EdgeInsets.only(top: 20.0, bottom: 200.0),
                child: SingleChildScrollView(
                  child: Stack(
                    children: [
                      Wrap(
                        direction: Axis.horizontal,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Positioned(
                            // group34406eW7 (31:274)
                            left: 201 * fem,
                            top: 248 * fem,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 10*fem, 10*fem),
                              width: 150 * fem,
                              height: 197 * fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(24 * fem),
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
                                        Positioned(
                                          top: 30 * fem,
                                          left: 50*fem,
                                          child:
                                          Image.asset('images/icon image/icon device.png'),
                                        ),
                                        Container(
                                          // notfounddevicedX1 (31:270)
                                          margin:  EdgeInsets.fromLTRB(30*fem, 80*fem, 1*fem, 12*fem),
                                          constraints:  BoxConstraints (
                                            maxWidth:  81*fem,
                                          ),
                                          child:
                                          Text(
                                            'Not found\ndevice?',
                                            textAlign:  TextAlign.center,
                                            style: GoogleFonts.manrope(
                                              fontSize:  17*ffem,
                                              fontWeight:  FontWeight.w600,
                                              height:  1.4117647059*ffem/fem,
                                              color:  Color(0xfff7f7f7),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 140 * fem,
                                          left: 30*fem,
                                          child:
                                          Text(
                                            // selectmanuallyHrT (31:271)
                                            'Select manually',
                                            style: GoogleFonts.manrope(
                                              fontSize:  12*ffem,
                                              fontWeight:  FontWeight.w500,
                                              height:  1.365*ffem/fem,
                                              color:  Color(0xffffb167),
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
                    ],
                  ),
                ),
              ),
            ]
            ),
          ),
        ),
      ),
    );
  }
}
