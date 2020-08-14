import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

// import 'modules/home/repositories/poke_repositort.dart';
import 'shared/utils/constants.dart';
import 'package:Aula1/app/modules/home/home_module.dart';
// import 'modules/home/home_page.dart';
import 'app_widget.dart';
import 'app_controller.dart';
// import 'modules/home/home_controller.dart';

class AppModule extends MainModule {
  @override
  // implement binds
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_base))),
      ];

  @override
  // implement bootstrap
  Widget get bootstrap => AppWidget();

  @override
  // implement routers
  List<Router> get routers => [Router('/', module: HomeModule())];
}
