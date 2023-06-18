import 'package:flutter/cupertino.dart';

import '../model/weather -model.dart';

class WeatherProvider extends ChangeNotifier{
  WeatherModel?_weatherData;
  String?cityName;
  set weatherData(WeatherModel? weather){
   _weatherData = weather;
   notifyListeners();
  }
WeatherModel? get weatherData =>_weatherData;
}