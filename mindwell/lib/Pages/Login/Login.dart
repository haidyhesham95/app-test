import 'package:flutter/material.dart';
import 'package:mindwell/Pages/Sign%20up/Sign%20up.dart';
import 'package:mindwell/Pages/forget_Password/Forget%20_Password.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE0D5C0),
     //backgroundColor:Color(0xffDFCCC6),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Image.asset('assets/images/cdfg-fotor.png',height: 200,width: double.infinity,),
                Text('Sign In',style: TextStyle(fontSize: 35,fontFamily: 'Courgette'),),
                Text('Welcome back to mindWell',style: TextStyle(fontSize: 20,fontFamily: 'Courgette'),),
                SizedBox(height: 30,),
                TextField(

                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email_outlined),
                    contentPadding:  EdgeInsets.all(20),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(18),
                      borderSide: BorderSide(
                        color: Color(0xffF1E3DA),
                        width: 1.5,
                      ),
                    ),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color:Color(0xffF1E3DA) ,
                          width: 1.5,
                        ),

                    ),

                  ),
                ),
                SizedBox(height: 20,),

                TextField(

                  keyboardType: TextInputType.text,
                  obscureText: true,

                  decoration: InputDecoration(
                    hintText: 'password',
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(18),
                     borderSide: BorderSide(
                        color: Color(0xffF1E3DA),
                       // color: Color(0xffF1E3DA),
                        width: 1.5,
                      ),

                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color:Color(0xffF1E3DA) ,
                          width: 1.5,
                        )
                    ),
                    filled: true,

                    contentPadding: const EdgeInsets.all(20),
                  ),
                ),
                 Align(
                   alignment: Alignment.bottomRight,
                     child: TextButton(
                     onPressed: (){
                       Navigator.pushReplacement(
                         context,
                         MaterialPageRoute(
                           builder:(context)=> ForgetPassword(),
                         ),
                       );
                     },
                         child: Text('forget your password ?',style: TextStyle(fontSize: 15,fontFamily: 'Courgette',color: Colors.black),))),
                SizedBox(height: 50,),
                MaterialButton(
                  onPressed: () {

                  },
                  elevation: 5.0,
                  color: Color(0xffF1E6DA),

                  child:  Container(
                    height: 60,
                    width: 500,
                    child: Center(
                      child: Text(
                        'Sign In ',
                        style: TextStyle(
                          color: Color(0xff91A480),
                          fontSize: 20,
                          //fontWeight: FontWeight.bold,
                          //fontFamily: 'Courgette',
                        ),
                      ),
                    ),
                  ),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none,
                  ),
                ),
                SizedBox(height: 20,),
                MaterialButton(
                  onPressed: () {

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder:(context)=> SignUp(),
                        ),
                      );


                  },
                  elevation: 5.0,
                  color: Colors.white,

                  child:  Container(
                    height: 60,
                    width: 500,
                    child: Center(
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: Color(0xff91A480),
                          fontSize: 20,
                          //fontWeight: FontWeight.bold,
                          //fontFamily: 'Courgette',
                        ),
                      ),
                    ),
                  ),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none,
                  ),
                ),
                SizedBox(height: 20,),
                // MaterialButton(
                //   onPressed: () {
                //
                //   },
                //   elevation: 5.0,
                //   color: Colors.white,
                //
                //   child:  Container(
                //     height: 60,
                //     width: 500,
                //     child: Center(
                //       child: Text(
                //         'Sign In With Google',
                //         style: TextStyle(
                //           color: Color(0xff91A480),
                //           fontSize: 20,
                //           //fontWeight: FontWeight.bold,
                //           //fontFamily: 'Courgette',
                //         ),
                //       ),
                //     ),
                //   ),
                //   shape: OutlineInputBorder(
                //     borderRadius: BorderRadius.circular(18),
                //     borderSide: BorderSide.none,
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Sign In With Google',style: TextStyle(fontSize: 20,color: Color(0xff91A480),),),
                  SizedBox(width: 10,),
                  Image.asset('assets/images/download.png',height: 30,),
                  ],
                ),
            ]),
          ),
        ),
      ),
    );
  }
}
