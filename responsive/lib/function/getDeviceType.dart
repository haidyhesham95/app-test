import 'package:flutter/material.dart';

import '../enums/Device_Type.dart';

Device_Type getDeviceType(MediaQueryData mediaQueryData)
{
  Orientation orientation = mediaQueryData.orientation;
  double width =0;
  if(orientation == Orientation.landscape){
    width=mediaQueryData.size.height;
  }else{
    width=mediaQueryData.size.width;
  }if(width>=950){
    return Device_Type.Deskatop;
  }if(width>=600){
    return Device_Type.Tablet;
  }
  return Device_Type.Mobile;
}