import 'package:e_commerce_app/Constant/Colors.dart';
import 'package:e_commerce_app/Constant/Styles.dart';
import 'package:e_commerce_app/Pages/auth/Login/buttonSignIn.dart';
import 'package:e_commerce_app/Pages/auth/Login/login_cubit.dart';
import 'package:e_commerce_app/Pages/auth/Login/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

import '../../../Widget/widget formfield.dart';
import '../../../bottom_Navigation.dart';
import '../../Home/Home.dart';
import 'account signup.dart';
import 'forget.dart';
import 'google.dart';
import 'login_cubit.dart';
import 'login_cubit.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>LoginCubit(),
      child:BlocBuilder<LoginCubit,LoginState>(
        builder: (context,state){
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
                          Text('Sign In',style: Styles.textStyle35,),
                          Text('Welcome back to perfume shope',
                            style: TextStyle(fontSize: 20,fontFamily: 'Courgette'),),
                          SizedBox(height: 30,),

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
                          Forget(),
                          SizedBox(height: 40,),
                          Column(
                            children: [
                              ButtonSignIn(
                                  data: 'Sign In',
                                  onPressed:
                                      (){
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                        builder:(context)=> NavigationBarPage(),),);
                                  }

                              ),
                              SizedBox(height: 10,),
                              Google(
                                onPressed: ()  {
                                  BlocProvider.of<LoginCubit>(context).signInWithGoogle().then((value) {
                                    Navigator.pushReplacement(
                                        context,MaterialPageRoute(
                                        builder: (context) =>const Home()));

                                  },);


                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          AccountSignUp(),
                        ],
                      ),
                    ),
                  ),
                )


              ],

            ),
          );

        },
      )

    );
  }
}
