import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive/ui_component/info_widget.dart';

class Responsive extends StatelessWidget {

  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;

    return Scaffold(
      body:
      Container(
        color: Colors.grey,
        width: screenWidth/2,
        height: screenHeight/2,
        child: Center(
          child: InfoWidget(
            builder: (context,deviceInfo){

             return Container();
            },
          )
          ),
        ),

    );
  }

}

