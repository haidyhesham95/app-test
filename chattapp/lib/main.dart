import 'package:chattapp/Chat.dart';
import 'package:chattapp/Cubit/Login%20Cubit.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Cubit/Register Cubit.dart';
import 'Login.dart';
import 'Register.dart';
import 'firebase_options.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>LoginCubit()),
        BlocProvider(create: (context)=>RegisterCubit()),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
       home: Login(),
        routes: {
          Login.id: (context) => Login(),
          Register.id:(context) =>Register(),
          ChatPage.id:(context) =>ChatPage(),

          /*Here's where you receive your routes, and it is also the main widget*/
        },
        //  initialRoute: 'Login.id()',
      ),
    );
  }
}

