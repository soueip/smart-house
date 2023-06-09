import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  final String text;
  Function()? onTap;
  SquareTile({
    super.key,
    required this.imagePath,
    required this.text,
    required this.onTap});

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

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 0*fem,right: 10*fem),
        padding: EdgeInsets.fromLTRB(20.67*fem, 10.67*fem, 0.67*fem, 10.67*fem),
        width: 270*fem,
        height: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0x19000000)),
          color: Color(0x28ffffff),
          borderRadius: BorderRadius.circular(24*fem),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 26.67*fem,
              height: 26.67*fem,
            ),
            SizedBox(width: 10*fem),
            Text(
              text,
              style: TextStyle(fontSize: 16*fem),
            ),
          ],
        ),
      ),
    );
  }
}
