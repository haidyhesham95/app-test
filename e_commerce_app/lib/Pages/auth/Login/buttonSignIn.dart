import 'package:flutter/material.dart';

import '../../../Constant/Styles.dart';

class ButtonSignIn extends StatelessWidget {
  const ButtonSignIn({super.key, required this.data, this.onPressed});
final String data;
final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.white70,
      child:  Container(
        height: size.height*0.07,
        width: size.width*0.6,
        child: Center(
          child: Text(
              data,
              style: Styles.textStyle21
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
