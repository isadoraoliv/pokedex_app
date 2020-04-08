import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/app/modules/home/models/pokedex_model.dart';
import 'package:pokedex_app/app/modules/shared/utils/const_api.dart';

class PokedexRepository extends Disposable {
  final Dio _client;

  PokedexRepository(this._client);

  Future<List<PokedexModel>> listPokedex() async {
    try {
      final response = await _client.get(ConstAPI.pokeApiUrl);
      return (response.data as List)
          .map((i) => PokedexModel.fromJson(i))
          .toList();
    } catch (e) {
      throw e;
    }
  }

  //test other func
  Future<PokedexModel> loadPokedex() async {
    try {
      final response = await http.get(
          'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');
      var decodeJson = jsonDecode(response.body);
      return PokedexModel.fromJson(decodeJson);
    } catch (e) {
      print(e);
      return null;
    }
  }

  @override
  void dispose() {}
}
