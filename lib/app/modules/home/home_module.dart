import 'package:dio/dio.dart';
import 'package:pokedex_app/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex_app/app/modules/home/home_page.dart';
import 'package:pokedex_app/app/modules/home/repository/pokedex_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PokedexRepository(i.get<Dio>())),
        Bind((i) => HomeController(i.get<PokedexRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
