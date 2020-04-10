import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_app/app/modules/home/repository/pokedex_repository.dart';

import 'models/pokedex_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PokedexRepository repo;

  _HomeControllerBase(this.repo);

  @observable
  PokedexModel _listPokedex;

  @computed
  PokedexModel get listPokedex => _listPokedex;

  @action
  fetchPokedexList() {
    _listPokedex = null;
    repo.loadPokedex().then(
      (pokeList) {
        _listPokedex = pokeList;
      },
    );
  }

  @action
  getPokemon({int index}) {
    return _listPokedex.pokemon[index];
  }

  @action
  Widget getImage({String number}) {
    return CachedNetworkImage(
        placeholder: (context, url) => Container(
              color: Colors.transparent,
            ),
        imageUrl:
            'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/$number.png');
  }
}
