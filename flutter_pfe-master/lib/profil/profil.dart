// import 'dart:ui';
// import '../group/tab_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import '../home/home.dart';
// import '../navbar/navbar.dart';
//
// class Scene4 extends StatelessWidget {
//   const Scene4({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 377.0; // Define your new base width here
//     double baseHeight = 667.0; // Define your new base height here
//     double fem = MediaQuery.of(context).size.width /
//         baseWidth; // Calculate fem based on the new base width
//     double femHeight = MediaQuery.of(context).size.height /
//         baseHeight; // Calculate fem based on the new base height
//     double scaleFactorWidth = MediaQuery.of(context).size.width /
//         baseWidth; // Calculate scaling factor for width
//     double scaleFactorHeight = MediaQuery.of(context).size.height /
//         baseHeight; // Calculate scaling factor for height
//     double ffem = fem * 0.97; // Calculate ffem based on fem and 0.97 factor
//
//
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Profil'),
//         backgroundColor: Colors.black,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Scene13()),
//             );
//           },
//         ),
//       ),
//       endDrawer: NavDrawer(),
//       body: Container(
//         width: double.infinity,
//         child: Container(
//           width: double.infinity,
//           height: double.infinity,
//           decoration: const BoxDecoration(
//             color: Color(0xffffffff),
//             image: DecorationImage(
//               fit: BoxFit.cover,
//               image: AssetImage(
//                 'images/iimage/profil.png',
//               ),
//             ),
//           ),
//           child: Stack(
//             children: [
//               //bottom container
//               Positioned(
//                 // iphone142zU5 (166:334)
//                 left: 0 * fem,
//                 top: 200 * fem,
//                 child: Container(
//                   width: 379 * fem,
//                   height: 358 * fem * femHeight,
//                   decoration: BoxDecoration(
//                     gradient: const LinearGradient(
//                       begin: Alignment(0, -1),
//                       end: Alignment(0, 1),
//                       colors: <Color>[
//                         Color(0xcc2b2a29),
//                         Color(0xcc0d0c0c),
//                         Color(0xcc1b150e),
//                         Color(0xcc100e0c)
//                       ],
//                       stops: <double>[0, 0, 0, 1],
//                     ),
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(70 * fem),
//                       topRight: Radius.circular(70 * fem),
//                     ),
//                   ),
//                   child: Container(
//                     child: SingleChildScrollView(
//                       child: Container(
//                         margin: EdgeInsets.fromLTRB(
//                             10 * fem, 0 * fem, 16 * fem, 21 * fem),
//                         width: 272 * fem,
//                         height: 800 * fem * femHeight,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(70),
//                         ),
//                         child: Stack(
//                           children: [
//                             Positioned(
//                                 left: 50 * fem,
//                                 top: -0 * fem,
//                                 child: Container(
//                                     width: 260 * fem,
//                                     height: 258 * fem * femHeight,
//                                     child: Padding(
//                                       padding: const EdgeInsets.only(
//                                         top: 15.0,
//                                       ),
//                                       child: SingleChildScrollView(
//                                         child: Column(
//                                           crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                           children: [
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   bottom: 20.0),
//                                               child: TextFormField(
//                                                 autofillHints: const [],
//                                                 decoration:
//                                                 const InputDecoration(
//                                                   labelText: 'Change Email ',
//                                                   labelStyle: TextStyle(
//                                                       color: Colors.white,
//                                                       fontSize: 30),
//                                                   enabledBorder:
//                                                   UnderlineInputBorder(
//                                                     borderSide: BorderSide(
//                                                         color:
//                                                         Color(0xFFD8914D),
//                                                         width: 3.0),
//                                                   ),
//                                                 ),
//                                                 style: const TextStyle(
//                                                     color: Colors
//                                                         .white), // set the text color to white
//                                               ),
//                                             ),
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   bottom: 20.0),
//                                               child: TextFormField(
//                                                 autofillHints: const [],
//                                                 obscureText: true,
//                                                 // set the obscureText property to true
//                                                 decoration:
//                                                 const InputDecoration(
//                                                   labelText: 'Change Password',
//                                                   labelStyle: TextStyle(
//                                                       color: Colors.white,
//                                                       fontSize: 30),
//                                                   enabledBorder:
//                                                   UnderlineInputBorder(
//                                                     borderSide: BorderSide(
//                                                         color:
//                                                         Color(0xFFD8914D),
//                                                         width: 3.0),
//                                                   ),
//                                                 ),
//                                                 style: const TextStyle(
//                                                     color: Colors
//                                                         .white), // set the text color to white
//                                               ),
//                                             ),
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   bottom: 20.0),
//                                               child: TextFormField(
//                                                 autofillHints: const [],
//                                                 decoration:
//                                                 const InputDecoration(
//                                                   labelText:
//                                                   'Change Phone Number ',
//                                                   labelStyle: TextStyle(
//                                                       color: Colors.white,
//                                                       fontSize: 26),
//                                                   enabledBorder:
//                                                   UnderlineInputBorder(
//                                                     borderSide: BorderSide(
//                                                         color:
//                                                         Color(0xFFD8914D),
//                                                         width: 3.0),
//                                                   ),
//                                                 ),
//                                                 style: const TextStyle(
//                                                     color: Colors
//                                                         .white), // set the text color to white
//                                               ),
//                                             ),
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   bottom: 20.0),
//                                               child: TextFormField(
//                                                 autofillHints: const [],
//                                                 decoration:
//                                                 const InputDecoration(
//                                                   labelText:
//                                                   'Change User Name ',
//                                                   labelStyle: TextStyle(
//                                                       color: Colors.white,
//                                                       fontSize: 30),
//                                                   enabledBorder:
//                                                   UnderlineInputBorder(
//                                                     borderSide: BorderSide(
//                                                         color:
//                                                         Color(0xFFD8914D),
//                                                         width: 3.0),
//                                                   ),
//                                                 ),
//                                                 style: const TextStyle(
//                                                     color: Colors
//                                                         .white), // set the text color to white
//                                               ),
//                                             ),
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   bottom: 20.0),
//                                               child: TextFormField(
//                                                 autofillHints: const [],
//                                                 decoration:
//                                                 const InputDecoration(
//                                                   labelText: 'Change Birthday ',
//                                                   labelStyle: TextStyle(
//                                                       color: Colors.white,
//                                                       fontSize: 30),
//                                                   enabledBorder:
//                                                   UnderlineInputBorder(
//                                                     borderSide: BorderSide(
//                                                         color:
//                                                         Color(0xFFD8914D),
//                                                         width: 3.0),
//                                                   ),
//                                                 ),
//                                                 style: const TextStyle(
//                                                     color: Colors
//                                                         .white), // set the text color to white
//                                               ),
//                                             ),
//                                             Positioned(
//                                               left: 90 * fem,
//                                               top: 360 * fem,
//                                               child: ButtonTheme(
//                                                 minWidth: 200.0,
//                                                 child: MaterialButton(
//                                                   onPressed: () {},
//                                                   elevation: 10,
//                                                   splashColor:
//                                                   const Color(0x5D6978),
//                                                   color:
//                                                   const Color(0xFFD8914D),
//                                                   textColor: Colors.white,
//                                                   height: 50,
//                                                   minWidth: 200,
//                                                   shape: RoundedRectangleBorder(
//                                                       borderRadius:
//                                                       BorderRadius.circular(
//                                                           30)),
//                                                   child: const DefaultTextStyle(
//                                                     style: TextStyle(
//                                                       fontSize: 30,
//                                                       fontWeight:
//                                                       FontWeight.bold,
//                                                       fontStyle:
//                                                       FontStyle.normal,
//                                                       color: Colors.white,
//                                                     ),
//                                                     child: Text(
//                                                       'Save',
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     )))
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               //top container
//               Container(
//                 // profilTLy (37:274)
//                 width: double.infinity,
//                 height: 244 * fem,
//                 child: Stack(
//                   children: [
//
//                     Positioned(
//                       // rectangle213a5 (37:391)
//                       left: 0 * fem,
//                       top: 0 * fem,
//                       child: ClipRect(
//                         child: Align(
//                           child: SizedBox(
//                             width: 377 * fem,
//                             height: 185 * fem * femHeight,
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 gradient: const LinearGradient(
//                                   begin: Alignment(0, -1),
//                                   end: Alignment(0, 1),
//                                   colors: <Color>[
//                                     Color(0xcc2b2a29),
//                                     Color(0xcc0d0c0c),
//                                     Color(0xcc1b150e),
//                                     Color(0xcc100e0c)
//                                   ],
//                                   stops: <double>[0, 0, 0, 1],
//                                 ),
//                                 borderRadius: BorderRadius.only(
//                                   bottomLeft: Radius.circular(80 * fem),
//                                   bottomRight: Radius.circular(80 * fem),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       // welcomekatgremEeZ (37:402)
//                       left: 76 * fem,
//                       top: 126 * fem,
//                       child: Align(
//                         child: SizedBox(
//                           width: 226 * fem,
//                           height: 30 * fem * femHeight,
//                           child: Text(
//                             'Welcome Kat Grem!',
//                             style: GoogleFonts.inter(
//                               fontSize: 24 * ffem,
//                               fontWeight: FontWeight.w500,
//                               height: 1.2125 * ffem / fem,
//                               color: const Color(0xffffffff),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       // avatareiH (37:392)
//                       left: 137 * fem,
//                       top: 22 * fem,
//                       child: Align(
//                         child: SizedBox(
//                           width: 80.02 * fem,
//                           height: 80 * fem * femHeight,
//                           child: Container(
//                             decoration: const BoxDecoration(
//                               image: DecorationImage(
//                                 fit: BoxFit.cover,
//                                 image: AssetImage(
//                                   'images/icon image/avatar.png',
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const Tabar(),
//             ],
//           ),
//         ),
//       ),
//
//     );
//   }
// }
//
//
//
//
