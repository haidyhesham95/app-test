import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
   CustomButton({ this.onTap,required this.text}) ;
   VoidCallback?onTap;
String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 40,
        width: double.infinity,
        child: Center(child: Text(text,style: TextStyle(
          color: Colors.white,
        ),)),
      ),
    );
  }
}