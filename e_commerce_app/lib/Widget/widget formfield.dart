import 'package:flutter/material.dart';

import '../Constant/Colors.dart';

class WidgetFormField extends StatelessWidget {
  const WidgetFormField({super.key,  this.textInputAction, this.keyboardType, this.prefixIcon, this.suffixIcon, required this.obscureText, this.onPressed, this.hintText});

 final String? hintText;
final TextInputAction? textInputAction;
final TextInputType? keyboardType;
final bool obscureText ;
final Widget? prefixIcon;
final Widget? suffixIcon;
 final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: Colors.white.withOpacity(0.5),
        hintText: hintText,

        labelStyle: TextStyle(
          color: kColor,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,

        contentPadding:  EdgeInsets.all(20),
        focusedBorder: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(12),
          borderSide: BorderSide(
            color:kColor,
            width: 1.5,
          ),
        ),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(12),
          borderSide: BorderSide(
            color:kColor ,
            width: 1.5,
          ),

        ),

      ),
    );
  }
}
