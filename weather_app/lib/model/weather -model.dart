import 'package:flutter/material.dart';
class WeatherModel {
  DateTime date;
  double temp;
  double maxTemp;
  double minTemp;
  String weatherStateName;

  WeatherModel({

    required this.date,
    required this.maxTemp,
    required this.minTemp,
    required this.temp,
    required this.weatherStateName
  });

  factory WeatherModel.fromJson( Map <String ,dynamic> data){
    var jsonData = data['forecast']['forecastday'][0]['day'];
    return WeatherModel(date: data ['Location']['localtime'],
        maxTemp: jsonData['maxtemp_c'],
        minTemp: jsonData['mintemp_c'],
        temp: jsonData['avgtemp_c'],
        weatherStateName: jsonData['condition']['text']);
  }
   /* return WeatherModel(
      weatherStateName: data['weather_State-Name'],
      date: DateTime.parse(data['created']),
      temp: data['the_temp'],
      maxTemp: data['max_temp'],
      minTemp: data['min_temp'],
    );*/


  @override
  String toString() {
    return 'temp=$temp  mintemp=$minTemp  date = $date maxtemp=$maxTemp weatherStateName=$weatherStateName' ;
  }

String getImage() {
  if (weatherStateName == 'clear' || weatherStateName == 'Light Cloud'){
    return 'images/clear.png';
}
  else if (weatherStateName == 'Sleet'|| weatherStateName == 'Snow'|| weatherStateName == 'Hail'){
    return 'images/snow.png';
  }
  else if (weatherStateName == 'Heavy Cloud'){
    return 'images/cloudy.png';
  }
  else if (weatherStateName == 'Light Rain '|| weatherStateName == 'Heavy Rain'|| weatherStateName == 'Showers'){
    return 'images/rainy.png';
  }
  else if (weatherStateName == 'Thunderstorm'|| weatherStateName == 'Thunder'){
    return 'images/thunderstorm.png';
  }
  else{
  return 'images/clear.png';
  }
}

 MaterialColor getThemeColor() {
    if (weatherStateName == 'clear' || weatherStateName == 'Light Cloud'){
      return Colors.orange;
    }
    else if (weatherStateName == 'Sleet'|| weatherStateName == 'Snow'|| weatherStateName == 'Hail'){
      return Colors.blue;
    }
    else if (weatherStateName == 'Heavy Cloud'){
      return Colors.blueGrey;
    }
    else if (weatherStateName == 'Light Rain '|| weatherStateName == 'Heavy Rain'|| weatherStateName == 'Showers'){
      return Colors.blue;
    }
    else if (weatherStateName == 'Thunderstorm'|| weatherStateName == 'Thunder'){
      return Colors.deepPurple;
    }
    else{
      return Colors.orange;
    }
  }
}