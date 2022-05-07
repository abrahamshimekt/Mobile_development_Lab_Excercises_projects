import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tutorial_signup_page/routes.dart';

import 'login.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.of(context).pushReplacementNamed( RouteGenerator.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
            color: Color(0xffF5591F),
            gradient: LinearGradient(
                colors: [(Color(0x483d8b)), Color(0xffF2861E)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
      ),
      Center(
        child: Container(
          child: Image.asset('assets/images/splash.jpg'),
        ),
      )
    ]));
  }
}
