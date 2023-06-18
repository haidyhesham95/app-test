import 'package:chattapp/Cubit/Login%20Cubit.dart';
import 'package:chattapp/Cubit/Login%20State.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'Chat.dart';
import 'Register.dart';
import 'component/custom text filed.dart';
import 'component/customButton.dart';
import 'constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'helper/show snack bar.dart';

class Login extends StatelessWidget {
  static String id = 'Login';

  String? email , password;

  bool isLoading = false;

  GlobalKey<FormState>formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit,LoginState>(
      listener: (context,state){
        if(state is LoginLoading){
          isLoading =true;
        }else if (state is LoginSuccess){
          Navigator.pushNamed(context, ChatPage.id);
          isLoading=false;
        }else if (state is LoginFailure){
          showSnackBar(context,state.errorMessage);
          isLoading=false;
        }
      },
      child:ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Scaffold(
          backgroundColor:kPrimaryColor,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Form(
              key:formkey ,
              child: ListView(
                children: [
                  const SizedBox(height: 75,),

                  Image.asset(kLogo,
                    height: 100,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[ Text(
                      'Scholar Chat',
                      style: TextStyle(
                          fontSize: 32, color: Colors.white,
                          fontFamily: 'pacifico'),
                    ),
                ],
                  ),
                  SizedBox(height: 75,),

                  Row(
                    children: [
                      Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomFormTextField(
                    onChanged: (data) {
                      email = data;
                    },
                    hintText: 'Email',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomFormTextField(
                    obscureText: true,
                    onChanged: (data) {
                      password = data;
                    },
                    hintText: 'Password',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    onTap: () async
                    {
                      if (formkey.currentState!.validate()) {
                       BlocProvider.of<LoginCubit>(context).loginUser
                         (email: email!, password: password!);
                      
                      }else{}
                    },
                    text: 'login',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\`t have account ?',
                        style: TextStyle(color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, Register.id);
                          //Navigator.of(context, rootNavigator: true).pushNamed("/Register.id");
                        },
                        child: Text(
                          '  Register ',
                          style: TextStyle(
                            color: Color(0xffC7EDE6),
                          ),
                        ),
                      ),
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
  Future <void> loginUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword
      (email: email!, password: password!);
  }


}
