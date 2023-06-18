import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/WeatherState.dart';
import 'package:weather_app/model/weather%20-model.dart';
import 'package:weather_app/services/Weather%20Services.dart';

class WeatherCubit extends Cubit <WeatherState>
{
  WeatherCubit(this.weatherService):super (WeatherInitial());
  WeatherService weatherService;
  String?cityName;
  WeatherModel?weatherModel;
  void getWeather({required String cityName}) async{
    emit(WeatherLoading());
    try{
      weatherModel = await weatherService.getWeather(cityName: cityName);
      emit(WeatherSuccess());
    }on Exception catch(e){
      emit(WeatherFailure());
    }

  }
  
}

