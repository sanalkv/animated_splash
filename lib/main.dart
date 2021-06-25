import 'package:animated_splash_screen/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash screen Demo',
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}

