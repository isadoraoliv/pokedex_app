import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/app/modules/home/models/pokedex_model.dart';

class PokedexRepository extends Disposable {
  final Dio _client;

  PokedexRepository(this._client);

  Future<PokedexModel> loadPokedex() async {
    try {
      final response = await _client.get(
          'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json');
      var decodeJson = jsonDecode(response.data);
      return PokedexModel.fromJson(decodeJson);
    } catch (e) {
      print(e);
      return null;
    }
  }

  @override
  void dispose() {}
}
