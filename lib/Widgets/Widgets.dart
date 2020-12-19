import 'package:flutter/material.dart';

class LocatedWidget extends StatelessWidget {
  LocatedWidget({
    this.upPadd = 1, this.downPadd = 1, this.leftPadd = 1,
    this.rightPadd = 1, this.height = 1, this.width = 1,
    this.child
  });
  final int upPadd;
  final int downPadd;
  final int height;
  final int leftPadd;
  final int width;
  final int rightPadd;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(
            flex: leftPadd,
            child: SizedBox(),
          ),
          Expanded(
            flex: width,
            child: Column(
              children: [
                Expanded(child: SizedBox(), flex: upPadd),
                Expanded(
                  flex: height,
                  child: child,
                ),
                Expanded(flex: downPadd, child: SizedBox())
              ],
            ),
          ),
          Expanded(flex: rightPadd, child: SizedBox())
        ],
      );
  }
}

class LocatedButton extends StatelessWidget {
  LocatedButton({
    this.upPadd = 1, this.downPadd = 1, this.leftPadd = 1,
    this.rightPadd = 1, this.height = 1, this.width = 1,
    this.onPressed, this.child
  });
  final int upPadd;
  final int downPadd;
  final int height;
  final int leftPadd;
  final int width;
  final int rightPadd;
  final Function onPressed;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return LocatedWidget(
      upPadd: upPadd,
      downPadd: downPadd,
      height: height,
      leftPadd: leftPadd,
      width: width,
      rightPadd: rightPadd,
      child: FlatButton(
        child: child,
        onPressed: this.onPressed,
      ),
    );
  }
}
