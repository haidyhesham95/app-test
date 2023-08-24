import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE0D5C0),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text('Sign Up',style: TextStyle(fontSize: 35,fontFamily: 'Courgette'),),
            Text('We are glad you will join us',style: TextStyle(fontSize: 20,fontFamily: 'Courgette'),),
            SizedBox(height: 30,),
            TextField(

              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: 'Name',
                prefixIcon: Icon(Icons.person_outline),
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

              decoration: InputDecoration(
                hintText: 'Phone',
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.phone),
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
            SizedBox(height: 20,),
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
                hintText: 'Password',
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
            SizedBox(height: 30,),
            Text('You Creating The Account You Agree To The',style: TextStyle(fontSize: 18,fontFamily: 'Courgette'),),
            SizedBox(height: 20,),
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
                    'Sign Up ',
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

          ],
        ),
      ),
    );
  }
}
