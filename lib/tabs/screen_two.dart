import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class ScreenTwo extends StatelessWidget {
  static const String routeName = "two";

  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(children: [
          Row(
            children: [
              CircleAvatar(
                  backgroundImage: AssetImage("assets/images/img_5.png")),
              SizedBox(width: 10),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 50,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Hello,Jade",
                          style: TextStyle(
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Container(
                      height: 50,
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Ready to workout",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ))),
                  SizedBox(
                    width: 100,
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
