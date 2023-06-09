import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const MyButton({Key? key,
    required this.onTap,
    required this.text,
  });

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

    return Positioned(
      left: 46 * fem,
      top: 295 * fem,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 280,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xFFD8914D),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Center(
            child: DefaultTextStyle(
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
              child: Text(
                  text,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
