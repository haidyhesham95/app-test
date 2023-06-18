import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points/cubit/counter_cubit.dart';
import 'package:points/cubit/counter_state.dart';

class Counter extends StatelessWidget {
Counter({Key?key}):super(key: key);
  int teamAPoints =0;
  int teamBPoints =0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(fontSize: 32,
                            fontWeight: FontWeight.bold),

                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green.shade300,
                          maximumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(
                              team: 'A', buttonNumber: 1);
                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),


                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green.shade300,
                            maximumSize: Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(
                              team: 'A', buttonNumber:2);
                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),


                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green.shade300,
                            maximumSize: Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(
                              team: 'A', buttonNumber: 3);
                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),

                    ],
                  ),
                ),

                Container(
                  height: 500,
                  child: VerticalDivider(
                    indent: 50,
                    endIndent: 50,
                    color: Colors.green.shade200,
                    thickness: 2,
                  ),
                ),

                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(fontSize: 32,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green.shade300,
                            maximumSize: Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(
                              team: 'B', buttonNumber: 1);

                        },
                        child: Text(
                          'Add 1 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),


                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green.shade300,
                            maximumSize: Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(
                              team: 'B', buttonNumber: 2);

                        },
                        child: Text(
                          'Add 2 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),


                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green.shade300,
                            maximumSize: Size(150, 50)),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).TeamIncrement(
                              team: 'B', buttonNumber: 3);

                        },
                        child: Text(
                          'Add 3 Point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.green.shade300, maximumSize: Size(150, 50)),
              onPressed: () {

              },
              child: Text(
                'Reset',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ],
        ),

      );
    }, listener: (context,state){

    });
  }
}
