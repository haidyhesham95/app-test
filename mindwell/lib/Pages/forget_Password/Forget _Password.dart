import 'package:flutter/material.dart';
import 'package:mindwell/Pages/Login/Login.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE0D5C0),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Forget Your Password',style: TextStyle(fontSize: 30,fontFamily: 'Courgette'),),
            SizedBox(height: 40,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: 'Enter Your Email',
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
                hintText: 'Enter A New Password',
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
                    'Submit ',
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
            SizedBox(height: 30,),
            TextButton(
              onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder:(context)=> Login(),
                  ),
                );
              },
                child: Text('Back To SignIn',style: TextStyle(fontSize: 20,fontFamily: 'Courgette',color: Colors.black),)),

        ],),
      ),

    );
  }
}
