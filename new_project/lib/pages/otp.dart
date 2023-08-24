
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_project/custom/Custom_Button.dart';
import 'package:new_project/custom/textField_otp.dart';
import 'package:new_project/pages/regester.dart';
import '../constant/Styles.dart';
import '../custom/Controller.dart';

class Otp extends StatelessWidget {
 const Otp({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/otp.png',height: 200,),
                 Text('Please Check Your Phone',style: Styles.textStyle23,),
                 Text('We have sent you a Verification Code by Sms',style: Styles.textStyle18,),
                 SizedBox(height: 30,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     TextField_Otp(controller:c1,first: true,last: false,),
                     TextField_Otp(controller:c2 ,first: false,last: false,),
                     TextField_Otp(controller:c3 ,first: false,last: false,),
                     TextField_Otp(controller:c4 ,first: false,last: true,),

                   ],
                 ),
                  SizedBox(height: 50,),
                  Custom_Button(
                      onPressed:  () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder:(context)=> Regester(),
                      ),
                    );

                  }, data: 'Confirm'
                  ),
                  Row(
                    children: [
                      Text('Dont Receive any Code?',style: Styles.textStyle15,),
                      TextButton(
                          onPressed: (){

                          },
                          child: Text('Resend',style: TextStyle(color: Colors.black),)),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
