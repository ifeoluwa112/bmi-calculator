import 'package:flutter/material.dart';
import '../constants.dart';


class BottomButton extends StatelessWidget {

  BottomButton({required this.onTap, required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap.call();
      },
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        color: kBottomContainerColour,
        child: Center(
          child: Text(buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}