import 'package:flutter/material.dart';
import 'package:mindwell/Pages/Home_Screen/Home%20_Screen.dart';
import 'package:mindwell/Pages/Login/Login.dart';
import 'package:mindwell/Pages/Tab_Bar/Tab_Bar.dart';

class Welcome_Page extends StatelessWidget {
  const Welcome_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xffE0D5C0),
     // backgroundColor:Color(0xffDFCCC6),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text('Health Is Wholeness',style: TextStyle(fontSize: 30,fontFamily: 'Courgette', ),),
            Spacer(),
            Image.asset('assets/images/cdfg-fotor.png',height: 300,width: double.infinity,),

            Text('We help you to',style: TextStyle(fontSize: 24,fontFamily: 'Courgette',)),
            Text('feel better',style: TextStyle(fontSize: 30,fontFamily: 'Courgette',),),

            Spacer(),
            MaterialButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder:(context)=> Tab_Bar(),
                  ),
                );
              },
              elevation: 5.0,
              color: Color(0xffF1E6DA),
              child:  Container(
                height: 60,
                width: 500,
                child: Center(
                  child: Text(
                    'GETSTARTED',
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
