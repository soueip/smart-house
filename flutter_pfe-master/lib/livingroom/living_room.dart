import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../devices/my_devices.dart';
import '../group/tab_bar.dart';
import '../navbar/navbar.dart';
import '../rooms/room.dart';


const List<String> list = <String>[
  'Select device',
  'Device 1',
  'Device 2',
  'Device 3'
];
const List<String> list1 = <String>[
  'Select device',
  'Device 1',
  'Device 2',
  'Device 3'
];
const List<String> list2 = <String>[
  'Select device',
  'Device 1',
  'Device 2',
  'Device 3'
];

class Scene10 extends StatefulWidget {
  const Scene10({Key? key}) : super(key: key);

  @override
  _Scene10State createState() => _Scene10State();
}

class _Scene10State extends State<Scene10> {
  String dropdownValue = list.first;
  String dropdownValue1 = list1.first;
  String dropdownValue2 = list2.first;
  String dropdownValue3 = list2.first;
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
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Living room'),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Scene6()),
            );
          },
        ),
      ),
      endDrawer: const NavDrawer(),
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
                'images/iimage/living room.png',
              ),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Stack(
              children: [
                Container(
                    width: 900 * fem,
                    height: 550 * fem,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    margin: const EdgeInsets.only(top: 6.0, bottom: 100.0),
                    child: SingleChildScrollView(
                        child: Stack(children: [
                          Wrap(
                              direction: Axis.horizontal,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                //ysar
                                Wrap(
                                  direction: Axis.vertical,
                                  crossAxisAlignment:
                                  WrapCrossAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 0.0, bottom: 0.0),
                                      width: 175 * fem,
                                      height: 250 * fem,
                                      child: Stack(
                                        children: [
                                          //carro isar
                                          Positioned(
                                            left: 10 * fem,
                                            top: 0 * fem,
                                            child: Container(
                                              width: 159 * fem,
                                              height: 238 * fem,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      ClipRect(
                                                        child: Container(
                                                          margin: EdgeInsets.fromLTRB(
                                                              0 * fem, 0 * fem, 0 * fem, 21 * fem),
                                                          padding: EdgeInsets.fromLTRB(
                                                              3 * fem, 19 * fem, 3 * fem, 19 * fem),
                                                          width: double.infinity,
                                                          height: 152 * fem,
                                                          decoration: BoxDecoration(
                                                            border:
                                                            Border.all(color: const Color(0xffffffff)),
                                                            color: const Color.fromARGB(86, 0, 0, 0),
                                                            borderRadius:
                                                            BorderRadius.circular(24 * fem),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        top: 15 * fem,
                                                        child: SizedBox(
                                                          width: 153 * fem,
                                                          height: 119 * fem,
                                                          child: Image.asset(
                                                            'images/icon image/cool.png',
                                                            width: 155.33 * fem,
                                                            height: 68 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          //select isar
                                          Positioned(
                                            top: 160 * fem,
                                            left: 25 * fem,
                                            child: Container(
                                              width: 130 * fem,
                                              height: 35 * fem,
                                              padding: EdgeInsets.fromLTRB(
                                                  10 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(50),
                                                color: const Color.fromARGB(
                                                    86, 0, 0, 0),
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 255, 255, 255)),
                                              ),
                                              child: DropdownButton<String>(
                                                value: dropdownValue2,
                                                icon: const Icon(
                                                  Icons.arrow_downward,
                                                  color: Color.fromRGBO(
                                                      255, 107, 89, 1),
                                                ),
                                                iconSize: 20,
                                                elevation: 10,
                                                style: const TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 107, 89, 1),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                onChanged: (String? value2) {
                                                  setState(() {
                                                    dropdownValue2 = value2!;
                                                  });
                                                },
                                                items: list.map<
                                                    DropdownMenuItem<
                                                        String>>(
                                                        (String value2) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: value2,
                                                        child: Text(value2),
                                                      );
                                                    }).toList(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                //ymen
                                Wrap(
                                  direction: Axis.vertical,
                                  crossAxisAlignment:
                                  WrapCrossAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 0.0, bottom: 0.0),
                                      width: 175 * fem,
                                      height: 250 * fem,
                                      child: Stack(
                                        children: [
                                          //select imin
                                          Positioned(
                                            top: 160 * fem,
                                            right: 25 * fem,
                                            child: Container(
                                              width: 130 * fem,
                                              height: 35 * fem,
                                              padding: EdgeInsets.fromLTRB(
                                                  10 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(50),
                                                color: const Color.fromARGB(
                                                    86, 0, 0, 0),
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 255, 255, 255)),
                                              ),
                                              child: DropdownButton<String>(
                                                value: dropdownValue1,
                                                icon: const Icon(
                                                  Icons.arrow_downward,
                                                  color: Color.fromRGBO(
                                                      255, 107, 89, 1),
                                                ),
                                                iconSize: 20,
                                                elevation: 10,
                                                style: const TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 107, 89, 1),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                onChanged: (String? value1) {
                                                  setState(() {
                                                    dropdownValue1 = value1!;
                                                  });
                                                },
                                                items: list.map<
                                                    DropdownMenuItem<
                                                        String>>(
                                                        (String value1) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: value1,
                                                        child: Text(value1),
                                                      );
                                                    }).toList(),
                                              ),
                                            ),
                                          ),
                                          //carro imin
                                          Positioned(
                                            right: 10 * fem,
                                            top: 0 * fem,
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
                                                            width: double.infinity,
                                                            height: 152 * fem,
                                                            decoration: BoxDecoration(
                                                              border:
                                                              Border.all(color: const Color(0xffffffff)),
                                                              color: const Color.fromARGB(86, 0, 0, 0),
                                                              borderRadius:
                                                              BorderRadius.circular(24 * fem),
                                                            ),
                                                            child: AnimatedCrossFade(
                                                              firstChild: Image.asset(
                                                                'images/icon image/marou7aon.png',
                                                                width: 159 * fem,
                                                                height: 177 * fem,
                                                              ),
                                                              secondChild: Image.asset(
                                                                'images/icon image/marou7aoff.png',
                                                                width: 159 * fem,
                                                                height: 177 * fem,
                                                              ),
                                                              duration: const Duration(milliseconds: 0),
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
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                //louta yesar
                                Wrap(
                                  direction: Axis.vertical,
                                  crossAxisAlignment:
                                  WrapCrossAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 0.0, bottom: 0.0),
                                      width: 175 * fem,
                                      height: 250 * fem,
                                      child: Stack(
                                        children: [
                                          //caro
                                          Positioned(
                                            left: 10 * fem,
                                            top: 0 * fem,
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
                                                            width: double.infinity,
                                                            height: 152 * fem,
                                                            decoration: BoxDecoration(
                                                              border:
                                                              Border.all(color: const Color(0xffffffff)),
                                                              color: const Color.fromARGB(86, 0, 0, 0),
                                                              borderRadius:
                                                              BorderRadius.circular(24 * fem),
                                                            ),
                                                            child: AnimatedCrossFade(
                                                              firstChild: Image.asset(
                                                                'images/icon image/tvon.png',
                                                                width: 159 * fem,
                                                                height: 177 * fem,
                                                              ),
                                                              secondChild: Image.asset(
                                                                'images/icon image/tvoff.png',
                                                                width: 159 * fem,
                                                                height: 177 * fem,
                                                              ),
                                                              duration: const Duration(milliseconds: 0),
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
                                          //select
                                          Positioned(
                                            top: 160 * fem,
                                            left: 25 * fem,
                                            child: Container(
                                              width: 130 * fem,
                                              height: 35 * fem,
                                              padding: EdgeInsets.fromLTRB(
                                                  10 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(50),
                                                color: const Color.fromARGB(
                                                    86, 0, 0, 0),
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 255, 255, 255)),
                                              ),
                                              child: DropdownButton<String>(
                                                value: dropdownValue2,
                                                icon: const Icon(
                                                  Icons.arrow_downward,
                                                  color: Color.fromRGBO(
                                                      255, 107, 89, 1),
                                                ),
                                                iconSize: 20,
                                                elevation: 10,
                                                style: const TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 107, 89, 1),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                onChanged: (String? value2) {
                                                  setState(() {
                                                    dropdownValue2 = value2!;
                                                  });
                                                },
                                                items: list.map<
                                                    DropdownMenuItem<
                                                        String>>(
                                                        (String value2) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: value2,
                                                        child: Text(value2),
                                                      );
                                                    }).toList(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                //louta ymin
                                Wrap(
                                  direction: Axis.vertical,
                                  crossAxisAlignment:
                                  WrapCrossAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 0.0, bottom: 0.0),
                                      width: 175 * fem,
                                      height: 250 * fem,
                                      child: Stack(
                                        children: [
                                          //carro
                                          Positioned(
                                            right: 10 * fem,
                                            top: 0 * fem,
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
                                                            _bool1 = !_bool1;
                                                          });
                                                        },
                                                        child: ClipRect(
                                                          child: Container(
                                                            width: double.infinity,
                                                            height: 152 * fem,
                                                            decoration: BoxDecoration(
                                                              border:
                                                              Border.all(color: const Color(0xffffffff)),
                                                              color: const Color.fromARGB(86, 0, 0, 0),
                                                              borderRadius:
                                                              BorderRadius.circular(24 * fem),
                                                            ),
                                                            child: AnimatedCrossFade(
                                                              firstChild: Image.asset(
                                                                'images/icon image/speakeron.png',
                                                                width: 159 * fem,
                                                                height: 177 * fem,
                                                              ),
                                                              secondChild: Image.asset(
                                                                'images/icon image/speakeroff.png',
                                                                width: 159 * fem,
                                                                height: 177 * fem,
                                                              ),
                                                              duration: const Duration(milliseconds: 0),
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
                                          //select
                                          Positioned(
                                            top: 160 * fem,
                                            left: 25 * fem,
                                            child: Container(
                                              width: 130 * fem,
                                              height: 35 * fem,
                                              padding: EdgeInsets.fromLTRB(
                                                  10 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(50),
                                                color: const Color.fromARGB(
                                                    86, 0, 0, 0),
                                                border: Border.all(
                                                    color: const Color.fromARGB(
                                                        255, 255, 255, 255)),
                                              ),
                                              child: DropdownButton<String>(
                                                value: dropdownValue2,
                                                icon: const Icon(
                                                  Icons.arrow_downward,
                                                  color: Color.fromRGBO(
                                                      255, 107, 89, 1),
                                                ),
                                                iconSize: 20,
                                                elevation: 10,
                                                style: const TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 107, 89, 1),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                onChanged: (String? value2) {
                                                  setState(() {
                                                    dropdownValue2 = value2!;
                                                  });
                                                },
                                                items: list.map<
                                                    DropdownMenuItem<
                                                        String>>(
                                                        (String value2) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: value2,
                                                        child: Text(value2),
                                                      );
                                                    }).toList(),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                //add device
                                Wrap(
                                  direction: Axis.vertical,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          margin:
                                          const EdgeInsets.only(left: 20.0, bottom: 0.0),
                                          width: 130*fem,
                                          height: 130*fem,
                                          child: ClipRect(
                                            child: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem, 0 * fem, 0 * fem, 21 * fem),
                                              padding: EdgeInsets.fromLTRB(
                                                  3 * fem, 19 * fem, 3 * fem, 19 * fem),
                                              width: double.infinity,
                                              height: 152 * fem,
                                              decoration: BoxDecoration(
                                                border:
                                                Border.all(color: const Color(0xffffffff)),
                                                color: const Color.fromARGB(86, 0, 0, 0),
                                                borderRadius:
                                                BorderRadius.circular(24 * fem),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 150*fem, // set width to match parent
                                          height:200*fem, // set height to match parent
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Positioned(
                                                top: 93.0,
                                                left: 55.0,
                                                child: Text(
                                                  'add device...',
                                                  style: GoogleFonts.inter(
                                                    fontSize: 12 * ffem,
                                                    color: const Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 20.0,
                                                left: 60.0,
                                                child: FloatingActionButton(
                                                  onPressed: () {
                                                    showModalBottomSheet(
                                                        isScrollControlled: true,
                                                        context: context,
                                                        builder: (context) =>
                                                        const Scene9()); // <-- Add the missing closing parenthesis here
                                                  },
                                                  backgroundColor:
                                                  Colors.orangeAccent,
                                                  child: const Icon(Icons.add),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ])
                        ]))),
                const Tabar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
