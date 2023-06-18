import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/cubit/Weather_Cubit.dart';
import 'package:weather_app/provider/weather-provider.dart';
import 'package:weather_app/services/Weather%20Services.dart';
import 'HomePage.dart';
import 'model/weather -model.dart';

void main() {
  runApp(BlocProvider(
    create: (context){
      return WeatherCubit(WeatherService());
          },
      child: WeatherApp()));
}

class WeatherApp extends StatelessWidget {
  WeatherApp({Key? key}) : super(key: key);

  WeatherModel?weather;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        primarySwatch:  BlocProvider.of<WeatherCubit>(context).weatherModel == null? Colors.blue : BlocProvider.of<WeatherCubit>(context).weatherModel!.getThemeColor(),

      ),
      debugShowCheckedModeBanner: false,

      home:  HomePage(),
    );
  }
}

