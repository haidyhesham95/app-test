import 'package:e_commerce_app/Constant/Colors.dart';
import 'package:e_commerce_app/Constant/Styles.dart';
import 'package:e_commerce_app/Pages/auth/regester/pickimage.dart';
import 'package:e_commerce_app/Services/My_App_Method.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:image_picker/image_picker.dart';

import '../../../Widget/widget formfield.dart';
import '../Login/buttonSignIn.dart';
import 'package:image_picker/image_picker.dart';


class Regester extends StatelessWidget {
   Regester({super.key});
   XFile?_pickedImage;
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/background.jpg',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
           Center(
            child:  Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sign up',style: Styles.textStyle35,),
                    Text('We are glad you will join us 😊',
                      style: TextStyle(fontSize: 20,fontFamily: 'Courgette'),),
                    SizedBox(height: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height:size.width*0.3 ,
                          width: size.width*0.3,
                          child: PickImage(
                            pickedImage: _pickedImage,
                            function:()async{
                             await MyAppMethod.imagePickerDialog(
                                  context: context,
                                  cameraFCT: (){},
                                  galleryFCT: (){},
                                  removeFCT: (){}
                              );
                            } ,

                          ),
                        ),
                        SizedBox(height: 20,),
                        WidgetFormField(
                          hintText: 'Name',
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          prefixIcon: Icon(IconlyLight.profile,color: kColor,),
                          obscureText: false,
                        ),
                        SizedBox(height: 15,),
                        WidgetFormField(
                          hintText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          prefixIcon: Icon(IconlyLight.message,color: kColor,),
                          obscureText: false,
                        ),
                        SizedBox(height: 15,),
                        WidgetFormField(
                          hintText: 'Password',
                          keyboardType:TextInputType.visiblePassword ,
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                          prefixIcon: Icon(Icons.lock_outline,color: kColor,),
                          suffixIcon:
                          Icon(Icons.visibility,color: kColor,),

                        ),
                        SizedBox(height: 15,),
                        WidgetFormField(

                          hintText:'Repeat Password',
                          keyboardType:TextInputType.visiblePassword ,
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                          prefixIcon: Icon(Icons.lock_outline,color: kColor,),
                          suffixIcon:
                          Icon(Icons.visibility,color: kColor,),

                        ),
                      ],
                    ),
                    SizedBox(height: 40,),
                    Align(
                      alignment: Alignment.center,
                      child: ButtonSignIn(
                        data: 'Sign UP',
                      ),
                    ),


                  ],
                ),
              ),
            ),
          )


        ],

      ),
    );
  }
}
