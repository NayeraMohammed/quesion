import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:quesion/tabs/screen_four.dart';
import 'package:quesion/tabs/screen_one.dart';
import 'package:quesion/tabs/screen_three.dart';
import 'package:quesion/tabs/screen_two.dart';



class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int tabIndex = 0;
  late List<Widget> listScreens;
  @override
  void initState() {
    super.initState();
    listScreens = [
      ScreenOne(),
      InkWell(onTap: () {
        Navigator.of(context).pushNamed(ScreenTwo.routeName );
      },
          child: ScreenTwo()),
      ScreenThree(),
      ScreenFour()
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreens[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[400],
          backgroundColor: Theme.of(context).primaryColor,
          currentIndex: tabIndex,
          onTap: (int index) {
            setState(() {
              tabIndex = index;
            });
          },
          items: const [

            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Tab1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded),
              label: 'Tab2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Tab3',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Tab4',
            ),

          ]),
      backgroundColor: Theme.of(context).primaryColor,
    );

  }
}

