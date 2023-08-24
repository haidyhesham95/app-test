import 'package:e_commerce_app/Pages/home.dart';
import 'package:e_commerce_app/Pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CheckLogin extends StatefulWidget {
  const CheckLogin({Key? key}) : super(key: key);

  @override
  State<CheckLogin> createState() => _CheckLoginState();
}

class _CheckLoginState extends State<CheckLogin> {
  @override

  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if (snapshot.hasData) {
            return Home();

          }else{
            return Login();
          }

    });
  }
}
