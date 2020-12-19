import 'package:flutter/material.dart';
import 'package:reut_app/Widgets/Widgets.dart';
import 'package:reut_app/screens/Screen7.dart';

class Screen6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("screenspics/Picture6.png")
              )
          ),
                    child: LocatedButton(
                      child: Container(),
                      upPadd: 6,
                      downPadd: 4,
                      height: 1,
                      width: 15,
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Screen7()));
                      },
                    ),
                  ),
        ),
    );
  }
}