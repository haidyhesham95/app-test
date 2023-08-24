import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mindwell/Pages/Home_Screen/Home%20_Screen.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool firstOpen = true;

  _onIntroEnd(context) async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (!firstOpen) {
        _onIntroEnd(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var pageDecoration = const PageDecoration(
      titleTextStyle:
      TextStyle(fontSize: 40,fontFamily: 'DancingScript', fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19.0,),
      // descriptionPadding: EdgeInsets.all(16),
      pageColor: Color(0xffE0D5C0),
      imagePadding: EdgeInsets.zero,
    );
    return firstOpen
        ? IntroductionScreen(
            globalBackgroundColor: Color(0xffE0D5C0),
            pages: [
              PageViewModel(
                image: Image.asset('assets/images/logo2.png',fit: BoxFit.contain,
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.topCenter,),
                title: 'Hi',
                body: 'Welcome To Mind Well App',

                decoration: pageDecoration.copyWith(
                  contentMargin: const EdgeInsets.symmetric(horizontal: 16),
                  fullScreen: true,
                  bodyFlex: 3,
                  imageFlex: 3,
                ),
               
              ),
              PageViewModel(
                title: '‘Save your money’',
                body:
                '‘by using this app you will be updated about coins prices’',

                decoration: pageDecoration,
              ),
              PageViewModel(
                title: 'Save Your time',
                body:
                'don\’t lose the time to now when you have to buy or sell coins',
                decoration: pageDecoration,
              ),
            ],
            onDone: () => _onIntroEnd(context),
            onSkip: () => _onIntroEnd(context),
            // You can override onSkip callback
            showSkipButton: true,
            //dotsFlex: 0,
            nextFlex: 0,
            skip: const Text(
              'Skip',
              style: TextStyle(color: Colors.white),
            ),
            next: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            done: const Text('Done',
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.brown)),
            controlsMargin: const EdgeInsets.all(16),
            controlsPadding: const EdgeInsets.all(4),
            dotsDecorator: const DotsDecorator(
              size: Size(10.0, 10.0),
              color: Colors.white,
              activeSize: Size(22.0, 10.0),
              activeColor: Color(0xffDFCCC6),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
            ),
            // dotsContainerDecorator: const ShapeDecoration(
            //   color: Colors.black54,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.all(Radius.circular(8.0)),
            //   ),
            // ),
          )
        : WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              body: SizedBox(
                height: size.height,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/images/logo2.png',
                        width: size.width * 0.3,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/images/logo2.png',
                        width: size.width * 0.2,
                      ),
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/logo2.png',
                        width: size.width * 0.4,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
