import 'package:e_commerce_app/Pages/auth/regester/Regester.dart';
import 'package:flutter/material.dart';

import '../../../Constant/Styles.dart';

class AccountSignUp extends StatelessWidget {
  const AccountSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Don\`t have an account ?',style: Styles.textStyle18,),

        MaterialButton(
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder:(context)=> Regester(),
                    ),
              );
            },
            child: Text('Sign Up',
              style:Styles.textStyle5,))
      ],
    );
  }
}
