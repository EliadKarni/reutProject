import 'package:flutter/material.dart';
import 'package:reut_app/Widgets/Widgets.dart';
import 'package:reut_app/screens/Screen6.dart';

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("screenspics/Picture5.png")
              )
          ),
          child: LocatedButton(
            child: Container(),
            upPadd: 3,
            height: 1,
            downPadd: 6,
            width: 7,
            leftPadd: 11,
            onPressed: (){
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => Screen6(),
                  transitionDuration: Duration(seconds: 0),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}