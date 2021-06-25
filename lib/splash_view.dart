import 'package:flutter/material.dart';

import 'login_view.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 1))..forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: animationController,
        builder: (_, child) => Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.white],
              stops: [1 -animationController.value ,1 ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          alignment: Alignment.center,
          child: AnimatedOpacity(
            opacity: animationController.status == AnimationStatus.completed ? 1 : 0,
            duration: Duration(seconds: 1),
            child: child,
            onEnd: ()=>goToLoginView(context),
          ),
        ),
        child: Hero(
          tag: 'app_icon',
          child: Image.asset(
            'assets/app_icon.png',
            height: 140,
          ),
        ),
      ),
    );
  }

  void goToLoginView(BuildContext context) {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        transitionDuration: Duration(seconds: 2),
        transitionsBuilder: (_, anim1, __, child) => Opacity(
          opacity: anim1.value,
          child: child,
        ),
        pageBuilder: (_, __, ___) => LoginView(),
      ),
    );
  }
}
