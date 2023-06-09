import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../home/home.dart';
import 'package:flutter_pfe/rooms/room.dart';
import 'package:flutter_pfe/security/security_house.dart';
import 'package:flutter_pfe/devices/my_devices.dart';
import 'package:flutter_pfe/settings/my_setting.dart';

import '../notification/notification.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

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



    return SafeArea(
        child: Drawer(
          child: Container(
            color: const Color.fromARGB(224, 57, 53, 53),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(216, 146, 77, 1),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10 * fem,
                        top: 10 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 226 * fem,
                            height: 25 * fem * femHeight,
                            child: Text(
                              'Welcome Kat Grem!',
                              style: GoogleFonts.inter(
                                fontSize: 23 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2125 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 90 * fem,
                        top: 50 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 70.02 * fem,
                            height: 70 * fem* femHeight,
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'images/icon image/avatar.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(1),
                    child: Wrap(runSpacing: 16, children: [
                      ListTile(
                        leading: const Icon(Icons.home, color: Colors.white),
                        title: const Text(
                          'Home',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const Scene13()),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.room, color: Colors.white),
                        title: const Text(
                          'Rooms',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => const Scene6()),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.notifications,
                            color: Colors.white), // Set the color of the icon here
                        title: const Text(
                          'Notifications',
                          style: TextStyle(
                              color:
                              Colors.white), // Set the color of the text here
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => const Notif()),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.devices,
                            color: Colors.white), // Set the color of the icon here
                        title: const Text(
                          'Devices',
                          style: TextStyle(
                              color:
                              Colors.white), // Set the color of the text here
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => const Scene9()),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.security,
                            color: Colors.white), // Set the color of the icon here
                        title: const Text(
                          'Security',
                          style: TextStyle(
                              color:
                              Colors.white), // Set the color of the text here
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => const Scene7()),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.settings,
                            color: Colors.white), // Set the color of the icon here
                        title: const Text(
                          'Settings',
                          style: TextStyle(
                              color:
                              Colors.white), // Set the color of the text here
                        ),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => Scene11()),
                          );
                        },
                      ),
                    ])),
              ],
            ),
          ),
        ));
  }
}
