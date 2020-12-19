import 'package:flutter/material.dart';
import 'package:reut_app/Widgets/Widgets.dart';
import 'Screen2.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("screenspics/HomePage.png"),
                      fit: BoxFit.cover),
                ),
                child: LocatedButton(
                  upPadd: 4,
                  height: 2,
                  downPadd: 9,
                  leftPadd: 8,
                  rightPadd: 7,
                  width: 8,
                  onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2()));
                  },
                  child: Container(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
