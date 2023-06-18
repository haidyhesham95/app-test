import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/weather -model.dart';

class WeatherService {
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = '1bbc7a52046249799af22027230105';

  Future<WeatherModel?> getWeather({required String cityName}) async {
    WeatherModel? weatherData;
  try{
   // int id = await getCityId(cityName:cityName);
    Uri url = Uri.parse(
        '$baseUrl/forecast.json?key=1bbc7a52046249799af22027230105&q=$cityName&days=7');
    http.Response response = await http.get(url);
    Map<String, dynamic> jsonData = jsonDecode(response.body);
    Map<String, dynamic> data = jsonData['conosolidated_weather'][0];
    weatherData =WeatherModel.fromJson(data);

  }catch(e){
    print (e);


  }

    return weatherData;
  }
}
