
import 'package:flutter/material.dart';
import 'package:food_panda/splashScreen.dart';

void main() async {


  runApp(
    MyApp(

        child: MaterialApp(
            title: 'Food Panda app',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const MySplashScreen()
        ),
        ),
      );


}

class MyApp extends StatefulWidget {
  final Widget? child;
  MyApp({this.child});

  //to restart the app and initialize all variables from the start
  static void restartApp(BuildContext context)
  {
    context.findAncestorStateOfType<_MyAppState>()!.restartApp();
  }


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key key = UniqueKey();
  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child!,
    );
  }
}
