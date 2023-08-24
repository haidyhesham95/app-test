import 'package:e_commerce_app/Pages/auth/forgetpassword/ForgetPassword.dart';
import 'package:flutter/material.dart';

import '../../../Constant/Styles.dart';

class Forget extends StatelessWidget {
  const Forget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ForgetPassword(),
                ),
              );
            },
            child: Text(
              'forget your password ?',
              style: Styles.textStyle5,
            )));
  }
}
