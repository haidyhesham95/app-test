import 'package:chattapp/Chat.dart';
import 'package:chattapp/Cubit/RegisterState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'Cubit/Register Cubit.dart';
import 'component/custom text filed.dart';
import 'component/customButton.dart';
import 'constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'helper/show snack bar.dart';

class Register extends StatelessWidget {
  static String id = 'Register';
  String? email;
  String? password;
  bool isLoading = false;
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
      if (state is RegisterLoading) {
        isLoading = true;
      } else if (state is RegisterSuccess) {
        Navigator.pushNamed(context, ChatPage.id);
        isLoading = false;
      } else if (state is RegisterFailure) {
        showSnackBar(context, state.errorMessage);
        isLoading = false;
      }
    }, builder: (context, state) {
      return ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Scaffold(
          backgroundColor: kPrimaryColor,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Form(
              key: formkey,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 75,
                  ),
                  Image.asset(
                    'images/scholar.png',
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Scholar Chat',
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontFamily: 'pacifico'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 75,
                  ),
                  Row(
                    children: [
                      Text(
                        'SIGN UP',
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

                  /*CustomTextField(
                    hintText: 'Name',
                  ),
                  const SizedBox(height: 10,),*/

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
                    onTap: () async {
                      if (formkey.currentState!.validate()) {
                        BlocProvider.of<RegisterCubit>(context)
                            .registerUser(email: email!, password: password!);
                      } else {}
                    },
                    text: 'sign up',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'already have an account ?',
                        style: TextStyle(color: Colors.white),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            '  Login ',
                            style: TextStyle(color: Color(0xffC7EDE6)),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  Future<void> registerUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
