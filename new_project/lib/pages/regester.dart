import 'package:flutter/material.dart';

import '../constant/Styles.dart';
import '../custom/MaterialButton.dart';

class Regester extends StatelessWidget {
  const Regester({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/computer.png',height: 300,),
              Text('This number is already registed',style: Styles.textStyle23,),
              Text('Do you want to restore the backup?',style: Styles.textStyle18,),
              SizedBox(height: 60,),
              Material_Button(),
            ],
          ),
        ),
      ),
    );
  }
}
