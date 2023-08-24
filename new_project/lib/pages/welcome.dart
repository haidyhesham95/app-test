import 'package:flutter/material.dart';
import 'package:new_project/custom/Custom_Button.dart';
import 'package:new_project/pages/CreatAccount.dart';
import '../constant/Styles.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'appÇō',
                  style: Styles.textStyle40,
                ),
                Image.asset(
                  'assets/images/Messaging.png',
                  height: 100,
                ),
              ],
            ),
            Custom_Button(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Create_Account(),
                    ),
                  );
                },
                data: 'CREATE'
            ),
          ],
        ),
      ),
    );
  }
}
