import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/WeatherState.dart';
import 'package:weather_app/cubit/Weather_Cubit.dart';
import 'Search Page.dart';
import 'model/weather -model.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);


 WeatherModel?weatherData;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return SearchPage(

            );
          }));
        },
            icon: Icon(Icons.search))],
        title: Text('Weather App'),
      ),

      body: BlocBuilder<WeatherCubit,WeatherState>(
        builder: (context,state){
          if(state is WeatherLoading){
            return Center(
              child: CircularProgressIndicator(),
            );

          }else if(state is WeatherSuccess)
            {
            weatherData=BlocProvider.of<WeatherCubit>(context).weatherModel;

              return Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        weatherData!.getThemeColor(),
                        weatherData!.getThemeColor()[300]!,
                        weatherData!.getThemeColor()[100]!,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    const Spacer(flex: 3,),
                    Text(BlocProvider.of<WeatherCubit>(context).cityName!,
                      style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    Text('update at : ${weatherData!.date.hour.toString()}:${weatherData!.date.minute.toString()}',
                      style: TextStyle(fontSize: 24,),),
                    Spacer(),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(weatherData!.getImage()),
                        Text('${weatherData!.temp.toInt()}',
                          style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                        Column(
                          children: [
                            Text('minTemp:${weatherData!.minTemp.toInt()}'),
                            Text('maxTemp:${weatherData!.maxTemp.toInt()}'),


                          ],
                        )




                      ],
                    ),
                    Spacer(),
                    Text(weatherData!.weatherStateName,
                      style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    const  Spacer(flex: 5,),



                  ],
                ),

              );
            }else if(state is WeatherFailure){
            return Center(
              child: Text('something went wrong please try agin'),
            );
          }else{
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'there is no weather 😔 start',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'searching now 🔍',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )
                ],
              ),

            );
          }
        },
      )
    );
  }
}
