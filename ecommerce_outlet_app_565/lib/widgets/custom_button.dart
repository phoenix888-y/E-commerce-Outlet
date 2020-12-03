import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final bool outlineButton;
  CustomButton({this.text, this.onPressed, this.outlineButton});


  @override
  Widget build(BuildContext context) {

    bool _outlineButton = outlineButton ?? false;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 65.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: _outlineButton ? Colors.transparent : Colors.black,
          border: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12.0,),
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 8.0,
        ),
        /*
        padding: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 12.0,
        ),
        */
        child: Text(
          text?? "Text",
          style: TextStyle(
            fontSize: 16.0,
            color: _outlineButton ? Colors.black : Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
