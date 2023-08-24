import 'package:bloc/bloc.dart';
import 'package:bloc_test/Data/repos/characters_repostly.dart';
import 'package:meta/meta.dart';

import '../Data/Models/Character.dart';
import '../Data/Models/qouit.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  List<Character> characters = [];
  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  List<Character> getAllCharacters() {
    charactersRepository.getAllCharacters().then((characters) {
      emit(CharactersLoaded(characters));
      this.characters = characters;
    });

    return characters;
  }
}
