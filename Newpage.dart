import 'package:flutter/material.dart';
import 'package:hello_satish/geo.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:async';

class Leve extends StatefulWidget {
  const Leve({Key? key}) : super(key: key);

  @override
  State<Leve> createState() => _LeveState();
}

class _LeveState extends State<Leve> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => getLocation()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clean Code',
      home: AnimatedSplashScreen(
        duration: 4000,
        splash: Image.asset('assets/map.png',fit: BoxFit.contain),
        nextScreen: getLocation(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Colors.white,
      ),
    );
  }
}

