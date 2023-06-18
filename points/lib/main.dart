import 'dart:developer';



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points/Counter.dart';
import 'package:points/cubit/counter_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context)=>CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,


        home:Counter (),
      ),
    );
  }
}

