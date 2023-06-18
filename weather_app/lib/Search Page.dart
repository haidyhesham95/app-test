import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/cubit/Weather_Cubit.dart';
import 'package:weather_app/provider/weather-provider.dart';
import 'package:weather_app/services/Weather%20Services.dart';

import 'model/weather -model.dart';


class SearchPage extends StatelessWidget {
// const  SearchPage({Key? key}) : super(key: key);
  String? cityName;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search a City'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onChanged: (data){
              cityName = data;
            },
            onSubmitted: (data) async {
              cityName = data;
              BlocProvider.of<WeatherCubit>(context).getWeather(cityName: cityName!);
              BlocProvider.of<WeatherCubit>(context).cityName=cityName;
              Navigator.pop(context);

            },
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 32, horizontal: 24),
              label: Text('Search'),
              suffixIcon: GestureDetector(
                onTap: ()async{
                  WeatherService service = WeatherService();
                  WeatherModel? weather =
                      await service.getWeather(cityName: cityName!);
                  Provider.of<WeatherProvider>(context,listen: false).weatherData = weather;
                  Provider.of<WeatherProvider>(context,listen: false).cityName=cityName;


                  Navigator.pop(context);
                },
                  child: Icon(Icons.search)),
              border: OutlineInputBorder(),
              hintText: ('Enter a City'),
            ),
          ),
        ),
      ),
    );
  }
}
