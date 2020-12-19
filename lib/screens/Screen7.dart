import 'package:flutter/material.dart';
import 'package:reut_app/Widgets/Widgets.dart';
import 'package:reut_app/screens/Screen8.dart';

class Screen7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("screenspics/Picture7.png")
              )
          ),
          child: LocatedButton(
            child: Container(),
            upPadd: 9,
            downPadd: 3,
            height: 1,
            width: 4,
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Screen8()));
            },
          ),
        ),
      ),
    );
  }
}