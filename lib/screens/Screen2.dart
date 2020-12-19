import 'package:flutter/material.dart';
import 'package:reut_app/Widgets/Widgets.dart';
import 'package:reut_app/screens/Screen3.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("screenspics/Picture2.png")
            )
          ),
          child: LocatedButton(
            child: Container(),
            upPadd: 3,
            height: 3,
            downPadd: 6,
            width: 1,
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Screen3()));
            },
          ),
        ),
      ),
    );
  }
}
