import 'package:e_commerce_app/Pages/Home/Home.dart';
import 'package:flutter/material.dart';

import '../../../Constant/Styles.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Google extends StatelessWidget {
  const Google({super.key, this.onPressed});
final  void Function()?onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
            onPressed: onPressed,
            child: Text('Sign In With Google',
              style: Styles.textStyle21,)),
        SizedBox(width: 10,),
        Image.asset('assets/images/google.png',height: 30,),
      ],
    );
  }
}
