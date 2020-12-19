import 'package:reut_app/Widgets/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:reut_app/screens/Screen5.dart';

class Screen4 extends StatefulWidget {
  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  String number = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("screenspics/Picture4.png"))),
          child: LocatedWidget(
            upPadd: 4,
            height: 3,
            downPadd: 2,
            width: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                    ),
                  ),
                  textAlign: TextAlign.end,
                  onChanged: (text) {
                    setState(() {
                      number = text;
                    });
                  },
                ),
                SizedBox(height: 15),
                (number != "")
                    ? RaisedButton(
                        child: Center(
                          child: Text(
                            "בדוק פרופיל",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(232, 166, 48, 1)),
                          ),
                        ),
                        color: Color.fromRGBO(38, 35, 112, 1),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                                color: Color.fromRGBO(32, 74, 151, 1))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Screen5()));
                        })
                    : RaisedButton(
                    child: Center(
                      child: Text(
                        "בדוק פרופיל",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(61, 58, 127, 1)),
                      ),
                    ),
                    color: Color.fromRGBO(38, 35, 112, 1),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: Color.fromRGBO(32, 74, 151, 1))),
                    onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
