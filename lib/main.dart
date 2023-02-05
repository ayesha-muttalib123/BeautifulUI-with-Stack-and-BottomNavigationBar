import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:groceryvendorapp/file.dart';
import 'package:groceryvendorapp/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    
      home: splashscreen()
    );
  }
}

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AnimatedSplashScreen(
      splash: 'assets/three.jpg',
     
      nextScreen: File(),
      splashTransition: SplashTransition.rotationTransition,
     
     
    ));
  }
}
