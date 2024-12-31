import 'package:closet_fuse_app/wave_pattern.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  var deviceHeight;
  var deviceWidth;

  WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
                ClipPath(
          clipper: BottomToMidBazierCurve(),
          child: Container(
            color: Colors.pink[200],
            height: deviceHeight,
            width: deviceWidth,
          ),
        ),
        ClipPath(
          clipper: BazierCurve(),
          child: Container(
            color: Colors.pink[200],
            height: 250,
            width: deviceWidth,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _welcomeWidget(),
            SizedBox(
              height: deviceHeight * 0.05,
            ),
            _welcomeTextWidget(),
            _getStartedLayer(),
          ],
        ),

      ]),
    );
  }

  Widget _welcomeWidget() {
    return SizedBox(
      height: deviceHeight * 0.60,
      child: Image.asset('assets/images/luxury-handbag.png'),
    );
  }

  Widget _welcomeTextWidget() {
    var welcomeMessage =
        'A distinction can be made between soft body handbags and frame handbags';
    return Row(
      children: [
        SizedBox(
          width: deviceWidth * 0.175,
        ),
        SizedBox(
          width: deviceWidth * 0.65,
          child: Text(
            welcomeMessage,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
        ),
        SizedBox(
          width: deviceWidth * 0.175,
        ),
      ],
    );
  }

  Widget _getStartedLayer() {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Get Started",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          IconButton(
            iconSize: 72,
            icon: const Icon(Icons.arrow_circle_right_outlined),
            onPressed: () {
              // ...
            },
          ),
        ],
      ),
    );
  }
}


//  ClipPath(
//               clipper: BazierCurve(),
//               child: Container(
//                 color: Colors.pinkAccent,
//                 height: 500,
//                 width: 500,
//               ),
//             ),