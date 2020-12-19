import 'package:flutter/material.dart';
import 'package:reut_app/Widgets/Widgets.dart';

class Screen8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("screenspics/Picture8.png")
              )
          ),
        ),
      ),
    );
  }
}