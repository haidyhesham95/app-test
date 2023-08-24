import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:new_project/constant/Styles.dart';
import 'package:new_project/pages/welcome.dart';

class Onboarding extends StatelessWidget {
   Onboarding({Key? key}) : super(key: key);
  final List<Introduction> list = [
    Introduction(
      title: 'Chat With Every one',
      subTitle: 'Your praivcy is save',
      imageUrl: 'assets/images/image1.png',
    ),
    Introduction(

      title: 'Video Call',
      subTitle: 'You can see your loved one and talk to him confidentility ',

      imageUrl: 'assets/images/image2.png',
    ),
    Introduction(

      title: 'Receive Money',
      subTitle: 'Share your story with friends',
      imageUrl: 'assets/images/image3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor:Colors.white,
      foregroundColor: Color(0xffA0C49E),
      introductionList: list,
      onTapSkipButton: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Welcome(),
          )),
      skipTextStyle:const TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),

    );
  }
}