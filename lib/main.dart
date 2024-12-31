import 'package:closet_fuse_app/pages/welcome_page.dart';
import 'package:closet_fuse_app/wave_pattern.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cold Fuse',
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        home: 
            WelcomePage(),
        );
  }
}
