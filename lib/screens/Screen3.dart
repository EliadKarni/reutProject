import 'package:flutter/material.dart';
import 'package:reut_app/Widgets/Widgets.dart';
import 'package:reut_app/screens/Screen4.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  String from = "";
  String to = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("screenspics/Picture3.png"))),
          child: LocatedWidget(
            upPadd: 10,
            height: 5,
            downPadd: 2,
            width: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "מוצא",
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
                      from = text;
                    });
                  },
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: "יעד",
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
                      to = text;
                    });
                    print(to);
                  },
                ),
                SizedBox(height: 15),
                (to != "" && from != "")
                    ? RaisedButton(
                        child: Center(
                          child: Text(
                            "המשך",
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
                                  builder: (context) => Screen4()));
                        })
                    : RaisedButton(
                    child: Center(
                      child: Text(
                        "המשך",
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
