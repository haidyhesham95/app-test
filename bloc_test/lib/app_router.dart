import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Bussinse_Logic/characters_cubit.dart';
import 'Data/Web_Server/api.dart';
import 'Data/repos/characters_repostly.dart';
import 'Presention/Screens/characters.dart';

class AppRouter{
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;
  AppRouter() {
    charactersRepository = CharactersRepository(CharactersWebServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings){
    switch (settings.name){
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
    create: (BuildContext contxt) => charactersCubit,
    child: Characters_Screen(),),);
    }


  }
}