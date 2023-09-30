import 'package:flutter/material.dart';

import 'home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        //ScreenOne.routeName:(context) => ScreenOne(),
        //  ScreenTwo.routeName:(context) => ScreenTwo(),
        //ScreenThree.routeName:(context) => ScreenThree(),
      },
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(primarySwatch: Colors.cyan),
    );
  }
}
