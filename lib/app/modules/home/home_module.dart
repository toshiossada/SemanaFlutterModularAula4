import 'package:aula4/app/shared/Utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';
import 'home_page.dart';
import 'repositories/poke_repository.dart';

class HomeModule extends ChildModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [
        Bind((i) => HomeController(repository: i.get<PokeRepository>())),
        Bind((i) => PokeRepository(dio: i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
      ];

  @override
  // TODO: implement routers
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/home', child: (_, args) => HomePage()),
      ];
}
