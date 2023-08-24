import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

class DeviceInfo{
  final Orientation orientation;
  final DeviceType deviceType;
  final double screenHeight;
  final double screenWidht;
  final double localWidth;
  final double localHeight;

  DeviceInfo(this.orientation, this.deviceType, this.screenHeight, this.screenWidht, this.localWidth, this.localHeight);

}