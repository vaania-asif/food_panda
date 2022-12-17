

import 'package:flutter/material.dart';
import 'package:food_panda/splashScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text(
            'sign out'
        ),
        onPressed: () {

          Navigator.push(
            context,
            MaterialPageRoute(builder: (c) => MySplashScreen()),
          );
        },
      ),
    );
  }
}
