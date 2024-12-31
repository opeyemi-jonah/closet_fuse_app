import 'package:flutter/material.dart';

class BazierCurve extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height * 0.75);

    path.quadraticBezierTo(size.width * 0.25 , size.height * 0.5, size.width * 0.5, size.height * 0.75);
    
    path.quadraticBezierTo(size.width * 0.75 , size.height * 1, size.width , size.height * 0.75);

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }


}


class BottomToMidBazierCurve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height); // Start at the bottom-left corner
    path.lineTo(0, size.height * 0.5); // Move up to the middle-left

    // Create a wavy pattern from the middle-left to the middle-right
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.3, // Raise the wave's peak
      size.width * 0.5,
      size.height * 0.5,
    );

    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.7, // Lower the wave's trough
      size.width,
      size.height * 0.5,
    );

    path.lineTo(size.width, size.height); // Connect to the bottom-right corner
    path.close(); // Close the path

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
