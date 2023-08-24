import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key,required this.hintText,required this.prefixIcon,required this.keyboardType });
 final String? hintText;
 final Widget? prefixIcon;
 final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType:keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        fillColor: Colors.grey.withOpacity(0.1),
        focusedBorder: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(18),
          borderSide: BorderSide(
            color: Color(0xffA0C49E),
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
              color: Color(0xffA0C49E),
              width:1.5,
            )
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(20),
      ),
    );
    
  }
}
