import 'package:flutter/material.dart';

//This is the reusableButton Widget

class ReusableButton extends StatelessWidget {
  
  final btnColour;
  final btnChild;
  final btnHeight;
  final btnWidth;
  final btnCircularRadius;
  ReusableButton({this.btnCircularRadius, this.btnWidth, this.btnHeight, this.btnChild, this.btnColour});



  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        height: btnHeight,
      width: btnWidth,
      decoration: BoxDecoration(
        color: btnColour,
        borderRadius: BorderRadius.circular(btnCircularRadius),
      ),
      child: btnChild,
    );
  }
}

class CustomSnapTextField extends StatelessWidget {
  CustomSnapTextField({this.autoFocus, this.label, this.isPasswordField});
  final  label;
  final autoFocus;
  final isPasswordField;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF51B5E5),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: TextField(
            obscureText: isPasswordField,
            autofocus: autoFocus,
            cursorHeight: 33,
            cursorWidth: 2,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              contentPadding: EdgeInsets.all(6)
            ),
            cursorColor: Color(0xFF69B77D),
          ),
        ),
      ],
    );
  }
}

