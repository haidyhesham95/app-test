import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';

class MyLocalController extends GetxController{
  Locale intialLang= sharepref!.getString("Lang")=="ar"?Locale("ar"):Locale("en");

  void changeLang(String codelang){
    Locale locale=Locale(codelang);
    sharepref!.setString("lang",codelang);
    Get.updateLocale(locale);
  }
  
}