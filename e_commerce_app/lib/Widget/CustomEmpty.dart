import 'package:e_commerce_app/Constant/Colors.dart';
import 'package:e_commerce_app/Constant/Styles.dart';
import 'package:flutter/material.dart';
class CustomEmpty extends StatelessWidget {
  const CustomEmpty({super.key, required this.imagePath, required this.label, required this.title, required this.buttonText});
  final String imagePath,label,title,buttonText;
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return  Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(imagePath,
              height:size.height*0.50,
              width: double.infinity,
            ),
            Text(label,
              style:Styles.textStyle30,
            ),
            SizedBox(height: 20,),
            Text(title,//(●'◡'●)
              style: Styles.textStyle20,
            ),
            SizedBox(height: 40,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: kPink,
                  padding: EdgeInsets.all(12),
                  elevation: 1.5
              ),
              onPressed: (){},
              child: Text(buttonText,
                style: Styles.textStyle20,
              ),
            ),
          ],
        ),
      ),
    );

  }
}
