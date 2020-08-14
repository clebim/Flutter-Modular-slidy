import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/utils/constants.dart';
import 'home_controller.dart';
import 'home_page.dart';
import 'repositories/poke_repositort.dart';

class HomeModule extends ChildModule {
  @override
  // implement binds
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<PokeRepository>())),
        Bind((i) => PokeRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_base))),
      ];

  @override
  // implement routers
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];
}
