import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      //backgroundColor: Color(0xffE0D5C0),
          backgroundColor:Color(0xffDFCCC6),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              'assets/images/cdfg-fotor.png',
              height: 300,
              width: 300,
            ),
          ),

          MaterialButton(
            onPressed: () {},
            elevation: 5.0,
            color: Color(0xffDFBEAD),
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 100),
            child: const Text(
              'Sign In',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Courgette',
              ),
            ),
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110),
            child: MaterialButton(
              onPressed: () {},
              elevation: 5.0,
              //color: Color(0xffDFCCC6),
                color:Color(0xffE0D5C0),
              padding:
                  const EdgeInsets.symmetric(vertical: 18, horizontal: 100),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Courgette',
                ),
              ),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login with ',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Courgette',
                  // fontWeight: FontWeight.w600
                ),
              ),
              Icon(Icons.arrow_forward_ios),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/images/download.png',
                height: 40,
              ),
            ],
          )
        ],
      ),
    ));
  }
}
