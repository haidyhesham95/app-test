
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextField_Otp extends StatelessWidget {
  TextField_Otp({Key? key,required this.first,required this.last,required this.controller,}) : super(key: key);
  bool first;
  bool last;
  TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.5,

        ),
        borderRadius: BorderRadius.circular(18),
        color: Color(0xffA0C49E),
      ),
      child: TextField(
        onChanged:((value){
          if (value.isNotEmpty && last==false){
            FocusScope.of(context).nextFocus();
          }else if(value.isEmpty && first==false){
            FocusScope.of(context).previousFocus();
          }

        }),

        keyboardType: TextInputType.number,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25),
        decoration: InputDecoration(
            border: InputBorder.none,
            constraints: BoxConstraints(

              maxWidth: MediaQuery.sizeOf(context).width/7,
              minHeight: MediaQuery.sizeOf(context).width/6,

            )),

      ),
    );
  }
}