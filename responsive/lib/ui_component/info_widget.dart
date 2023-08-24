import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive/function/getDeviceType.dart';
import 'package:responsive/models/Device_info.dart';
import  'package:device_frame/src/info/info.dart';
import 'package:responsive/models/Device_info.dart';
class InfoWidget extends StatelessWidget {
 final Widget Function(BuildContext context,DeviceInfo deviceInfo)builder;
  const InfoWidget({super.key,required this.builder});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constrains){
         var mediaQueryData = MediaQuery.of(context);
         var deviceInfo=DeviceInfo(
             orientation : mediaQueryData.orientation,
           deviceType:getDeviceType(mediaQueryData),
           screenWidht:mediaQueryData.size.width,
           screenHeight:mediaQueryData.size.height,
           localHeight:constrains.maxHeight,
           localwidht:constrains.maxWidth,
             );

         return builder(context,deviceInfo);
        },
    );
  }
}

