import 'package:flutter/material.dart';

class topWave extends CustomClipper<Path>{
 @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(-720 * _xScaling,-144 * _yScaling);
    path.cubicTo(-720 * _xScaling,-144 * _yScaling,-680 * _xScaling,-144 * _yScaling,-680 * _xScaling,-144 * _yScaling,);
    path.cubicTo(-640 * _xScaling,-144 * _yScaling,-560 * _xScaling,-144 * _yScaling,-480 * _xScaling,-128 * _yScaling,);
    path.cubicTo(-400 * _xScaling,-112 * _yScaling,-320 * _xScaling,-80 * _yScaling,-240 * _xScaling,-37.30000000000001 * _yScaling,);
    path.cubicTo(-160 * _xScaling,5 * _yScaling,-80 * _xScaling,59 * _yScaling,0 * _xScaling,64 * _yScaling,);
    path.cubicTo(80 * _xScaling,69 * _yScaling,160 * _xScaling,27 * _yScaling,240 * _xScaling,-10.699999999999989 * _yScaling,);
    path.cubicTo(320 * _xScaling,-48 * _yScaling,400 * _xScaling,-80 * _yScaling,480 * _xScaling,-69.3 * _yScaling,);
    path.cubicTo(560 * _xScaling,-59 * _yScaling,640 * _xScaling,-5 * _yScaling,680 * _xScaling,21.30000000000001 * _yScaling,);
    path.cubicTo(680 * _xScaling,21.30000000000001 * _yScaling,720 * _xScaling,48 * _yScaling,720 * _xScaling,48 * _yScaling,);
    path.cubicTo(720 * _xScaling,48 * _yScaling,720 * _xScaling,144 * _yScaling,720 * _xScaling,144 * _yScaling,);
    path.cubicTo(720 * _xScaling,144 * _yScaling,680 * _xScaling,144 * _yScaling,680 * _xScaling,144 * _yScaling,);
    path.cubicTo(640 * _xScaling,144 * _yScaling,560 * _xScaling,144 * _yScaling,480 * _xScaling,144 * _yScaling,);
    path.cubicTo(400 * _xScaling,144 * _yScaling,320 * _xScaling,144 * _yScaling,240 * _xScaling,144 * _yScaling,);
    path.cubicTo(160 * _xScaling,144 * _yScaling,80 * _xScaling,144 * _yScaling,0 * _xScaling,144 * _yScaling,);
    path.cubicTo(-80 * _xScaling,144 * _yScaling,-160 * _xScaling,144 * _yScaling,-240 * _xScaling,144 * _yScaling,);
    path.cubicTo(-320 * _xScaling,144 * _yScaling,-400 * _xScaling,144 * _yScaling,-480 * _xScaling,144 * _yScaling,);
    path.cubicTo(-560 * _xScaling,144 * _yScaling,-640 * _xScaling,144 * _yScaling,-680 * _xScaling,144 * _yScaling,);
    path.cubicTo(-680 * _xScaling,144 * _yScaling,-720 * _xScaling,144 * _yScaling,-720 * _xScaling,144 * _yScaling,);
    path.cubicTo(-720 * _xScaling,144 * _yScaling,-720 * _xScaling,-144 * _yScaling,-720 * _xScaling,-144 * _yScaling,);
    return path;
  }
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

class bottomWave extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    throw UnimplementedError();
  }
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}