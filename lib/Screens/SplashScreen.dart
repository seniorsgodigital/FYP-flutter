import 'dart:async';

import 'package:flutter/material.dart';
import 'package:seniors_go_digital/Screens/GetStartedScreen.dart';
import 'package:seniors_go_digital/auth/SignupScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>GetStartedScreen(), ));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(child: Image(image: AssetImage('assets/images/logo.jpg'),height: 400,)),
            ],
          ),
        ),
      ),
    );
  }
}
