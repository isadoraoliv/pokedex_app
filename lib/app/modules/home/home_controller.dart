import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;

import 'models/pokedex_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  PokedexModel _listPokedex;

  @computed
  PokedexModel get listPokedex => _listPokedex;

  @action
  fetchPokedexList() {
    loadPokedex().then(
      (pokeList) {
        _listPokedex = pokeList;
      },
    );
  }

  Future<PokedexModel> loadPokedex() async {
    try {
      final response = await http.get(
          'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');
      var decodeJson = jsonDecode(response.body);
      return PokedexModel.fromJson(decodeJson);
    } catch (error, stacktrace) {
      print("Erro ao carregar lista" + stacktrace.toString());
      return null;
    }
  }
}
