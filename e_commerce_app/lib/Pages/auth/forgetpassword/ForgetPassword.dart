import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../Constant/Colors.dart';
import '../../../Constant/Styles.dart';
import '../../../Widget/CustomApp_Bar.dart';
import '../../../Widget/widget formfield.dart';
import '../Login/buttonSignIn.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      appBar:const CustomAppBar(),
      body: Stack(
        children:[
          Container(

            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
               kColor,
                  kPink,
                ],

              ),
            ),
          ),


          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,


              children: [
                Image.asset('assets/images/password.png',
                  height: size.height*0.4,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Text('Forget Password',style: Styles.textStyle22,),
                Text('Please enter your email address you \`d like your password reset information sent to',
                  style: TextStyle(fontSize: 15,fontFamily: 'Courgette'),),
                SizedBox(height: 20,),
                WidgetFormField(
                  hintText: '***@gmail.com',
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  prefixIcon: Icon(IconlyLight.message,color: kColor,),
                  obscureText: false,
                ),
                SizedBox(height: 50,),

                Align(
                  alignment: Alignment.center,
                  child: ButtonSignIn(
                    onPressed: (){},
                    data: 'Submit',

                  ),
                ),
              ],
            ),
          ),
        ),
    ],
      ),


    );
  }
}
