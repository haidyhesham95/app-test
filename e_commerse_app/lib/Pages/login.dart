import 'package:e_commerce_app/Pages/NavigationBar.dart';
import 'package:e_commerce_app/constant/Colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../Cubits/login_cubit.dart';
import '../Model/custom_textfiled.dart';
import '../helper/show snack bar.dart';
import 'create_account.dart';
import 'home.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
  VoidCallback? onPressed;
  String?email;

  String?password;

  bool isLoading=false;

  GlobalKey<FormState>formKey =GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<LoginCubit,LoginState>(
        listener: (context,state){
          if(state is LoginLoading){
            isLoading =true;
          }else if (state is LoginSuccess){
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=>Home()));
            isLoading=false;
          }else if (state is LoginFailure){
            showSnackBar(context,state.errorMessage);
            isLoading=false;
          }

        },
        builder:(context,state)=> ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Scaffold(
            //backgroundColor:Color(0xffF6ECE2),
            body: Form(
              key: formKey,

              child: Stack(
                children:[
                  Image.asset('assets/images/i.jpg',
                    height: double.infinity,width: double.infinity,fit: BoxFit.fitHeight),
                  Positioned(
                    top: 100,

                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Image.asset('assets/images/ac.png',height: 100,),
                          SizedBox(height: 20,),
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 25),
                            child: Container(
                              color: Colors.white,
                              height: MediaQuery.of(context).size.height*0.3,
                              width: MediaQuery.of(context).size.width*0.88,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  My_TextField(
                                    onChange: (data){
                                      email=data;
                                    },
                                    textInputType: TextInputType.emailAddress,
                                    isPassword: false,
                                    hintText: '  Email :',
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  My_TextField(
                                    onChange: (data){
                                      password=data;
                                    },
                                    textInputType: TextInputType.text,
                                    isPassword: true,
                                    hintText: ' Password :',
                                  ),

                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 50,),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder:(context)=> Create_Account(),
                                ),
                              );
                            },
                            child: Text(
                              'CREATE ACCOUNT',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                          SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/download.png',height: 40,),
                              TextButton(
                                onPressed: () async {
                                  await signInWithGoogle().then((value) =>MaterialPageRoute(
                                    builder:(context)=> NavigationBarPage(),
                                  ),);


                                },
                                child: Text(
                                  'Create With Google',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ],)



                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 430,
                    left: 300,
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.07,
                      width: MediaQuery.of(context).size.width*0.15,
                      color: Colors.black,
                      child:  IconButton(
                        onPressed: () async{


                          if (formKey.currentState!.validate()) {
                            BlocProvider.of<LoginCubit>(context).loginUser
                              (email: email!, password: password!);

                          }else{}
                        },
                        // Navigator.push(context, MaterialPageRoute(
                        //     builder: (context)=>Home()));

                        icon: Icon(
                          Icons.play_arrow,color: Colors.white,),
                      ),
                    ),
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