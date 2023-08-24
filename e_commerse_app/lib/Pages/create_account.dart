import 'package:e_commerce_app/Cubits/create_account_cubit.dart';
import 'package:e_commerce_app/Pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../Model/custom_textfiled.dart';
import '../helper/show snack bar.dart';
import 'login.dart';
class Create_Account extends StatelessWidget {
   Create_Account({super.key, this.onPressed});
  VoidCallback? onPressed;
  String?email;
  String?password;
  bool isLoading=false;
GlobalKey<FormState>formKey =GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SafeArea(
        child:BlocConsumer<CreateAccountCubit,CreateAccountState>(
          listener: (context,state){
            if(state is CreateAccountLoading){
              isLoading =true;
            }else if (state is CreateAccountSuccess){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>Home()));
              isLoading=false;
            }else if (state is CreateAccountFailure){
              showSnackBar(context,state.errorMessage);
              isLoading=false;
            }
          },
          builder:(context,state)=> ModalProgressHUD(
            inAsyncCall: isLoading,

            child: Scaffold(
              backgroundColor:Color(0xffD8B8B9),
              body: Form(
                key: formKey,
                child: Stack(
                  children:[
                    Image.asset('assets/images/asset.jpg',
                        height: double.infinity,width: double.infinity,fit: BoxFit.fitHeight),
                    Positioned(

                      top: 150,
                      left: 40,
                      right: 40,


                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('CREATE ACCOUNT',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),),

                             SizedBox(height: 50,),

                             Container(
                              color: Colors.white,
                              height: 320,
                              width: 420,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  My_TextField(
                                    textInputType: TextInputType.text,
                                    isPassword: false,
                                    hintText: '  User Name :',
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
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
                            SizedBox(height: 50,),

                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder:(context)=> Login(),
                                  ),
                                );
                              },
                              child: Row(

                                children: [
                                  Text(
                                    'LOGIN',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Icon(Icons.arrow_forward_ios,color: Colors.black,),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 500,
                      left: 320,
                      child: Container(


                          height: 60,
                          width: 60,
                          color: Colors.black,
                          child: IconButton(
                            onPressed: () async{

                              if (formKey.currentState!.validate()) {
                                BlocProvider.of<CreateAccountCubit>(context).
                                registerUser(email: email, password: password);


                              }else{}
                            },


                            icon: Icon(
                              Icons.play_arrow,color: Colors.white,),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}
