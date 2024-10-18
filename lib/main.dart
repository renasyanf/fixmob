import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fixmob1/pages/onboard1.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer to navigate to the Onboard1 page after 3 seconds
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onboard1()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display your logo here
            Image.asset(
              'assets/images/fixmob.png', // Make sure to add your image in pubspec.yaml
              width: 400,
              height: 400,
            ),
            SizedBox(height: 20),
            
          ],
        ),
      ),
    );
  }
}
