import 'package:e_commerce_app/Model/Check_textField.dart';
import 'package:e_commerce_app/constant/Colors.dart';
import 'package:flutter/material.dart';

import '../Model/Custom_Button.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kGround,
        title: Center(child: Text('CHECKOUT')),
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/visa.png',height: 30,),
                  Image.asset('assets/images/PayPal-Logo.png',height: 60,)
                ],
              ),
              SizedBox(height: 40,),
              Check_TextFiled(
                hintText: 'Enter Your Name',
              ),
              SizedBox(height: 20,),
              Check_TextFiled(
                hintText: 'Enter Your Phone',
              ),
              SizedBox(height: 20,),
              Check_TextFiled(
                hintText: 'Enter Your Address',
              ),
              SizedBox(height: 20,),
              Check_TextFiled(
                hintText: 'Enter Your Code',
              ),
              SizedBox(height: 100,),
              MaterialButton(
                onPressed: (){},
                child: CustomButton(
                  text: 'Finish',

                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
