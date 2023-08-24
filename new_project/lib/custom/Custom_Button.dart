import 'package:flutter/material.dart';
import 'package:new_project/constant/Styles.dart';

import '../pages/otp.dart';

class Custom_Button extends StatelessWidget {
   Custom_Button({Key? key,required this.onPressed, required this.data,}) : super(key: key);
final void Function()? onPressed;
final String data;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      elevation: 5.0,
      color: Color(0xffA0C49E),

      child:  Container(
        height: 60,
        width: 300,
        child: Center(
          child: Text(
            data,
            style: Styles.textStyle22,
          ),
        ),
      ),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide.none,
      ),
    );
  }
}
