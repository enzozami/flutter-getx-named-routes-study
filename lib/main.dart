import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_named_route/pages/envio_params/arguments_param_page.dart';
import 'package:get_named_route/pages/envio_params/envio_params_home_page.dart';
import 'package:get_named_route/pages/envio_params/path_param_page.dart';
import 'package:get_named_route/pages/envio_params/query_param_page.dart';
import 'package:get_named_route/pages/home_page.dart';
import 'package:get_named_route/pages/inicial/inicial_page1.dart';
import 'package:get_named_route/pages/rota_nao_encontrada/rota_nao_encontrada_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      unknownRoute: GetPage(name: '/404', page: () => RotaNaoEncontradaPage()),
      initialRoute: '/home',
      routingCallback: ((Routing? routing) {
        debugPrint(routing?.previous);
        debugPrint(routing?.current);
      }),
      getPages: [
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/inicial/page1', page: () => InicialPage1()),
        GetPage(
          name: '/envioParam',
          page: () => EnvioParamsHomePage(),
          children: [
            GetPage(name: '/arguments', page: () => ArgumentsParamPage()),
            GetPage(name: '/pathParam/:nome/jornadaGetX', page: () => PathParamPage()),
            GetPage(name: '/queryParam', page: () => QueryParamPage()),
          ],
        )
      ],
    );
  }
}
