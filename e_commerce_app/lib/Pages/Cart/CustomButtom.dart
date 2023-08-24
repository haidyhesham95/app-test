import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.backgroundColor, required this.data, this.style, });
final MaterialStateProperty<Color?>? backgroundColor;
final String data;
final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
       data,
        style: style,
      ),
      style: ButtonStyle(
        backgroundColor:backgroundColor,
        padding: MaterialStateProperty.all(EdgeInsets.all(20),),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(30) ),),
      ),
    );
  }
}
