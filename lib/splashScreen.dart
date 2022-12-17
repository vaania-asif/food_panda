import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_panda/authentication/loginScreen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  startTimer() // timer for splash screen
  {


    Timer(const Duration(seconds: 1), () async {

        Navigator.push(context,MaterialPageRoute(builder: (c) => loginScreen()),);
      }
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              const SizedBox(
                height: 10,
              ),

            ],
          ),
        ),
      ),
    );
  }
}