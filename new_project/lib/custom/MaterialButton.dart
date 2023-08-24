import 'package:flutter/material.dart';

import '../constant/Styles.dart';

class Material_Button extends StatelessWidget {
  const Material_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        MaterialButton(
          onPressed: () {
            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(
            //     builder:(context)=> (),
            //   ),
            // );

          },
          elevation: 5.0,
          color: Color(0xffA0C49E ),
          child:  Container(
            height: 60,
            width: 50,
            child: Center(
              child: Text(
                'Yes ',
                style: Styles.textStyle22,
              ),
            ),
          ),
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          ),
        ),
        MaterialButton(
          onPressed: () {
            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(
            //     builder:(context)=> (),
            //   ),
            // );

          },
          elevation: 5.0,
          color: Color(0xffA0C49E ),

          child:  Container(
            height: 60,
            width: 50,
            child: Center(
              child: Text(
                'No ',
                style: Styles.textStyle22,
              ),
            ),
          ),
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          ),
        ),
      ],
    );
  }
}
