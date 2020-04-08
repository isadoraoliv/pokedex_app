import 'package:dio/dio.dart';
import 'package:pokedex_app/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app/app/app_widget.dart';
import 'package:pokedex_app/app/modules/home/home_module.dart';

import 'modules/home/repository/pokedex_repository.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Dio()),
        Bind((i) => PokedexRepository(i.get<Dio>())),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
