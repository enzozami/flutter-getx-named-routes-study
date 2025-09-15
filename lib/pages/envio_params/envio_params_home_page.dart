import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class EnvioParamsHomePage extends StatelessWidget {
  const EnvioParamsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Envio de Params'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed(
                      '/envioParam/arguments',
                      arguments: {
                        'name': 'Enzo Zamineli',
                        'curso': 'ADF - GetX',
                      },
                    );
                  },
                  child: Text('Arguments')),
              ElevatedButton(
                  onPressed: () {
                    final param = Uri.encodeFull('Enzo Zamineli');
                    Get.toNamed('/envioParam/pathParam/$param/jornadaGetX');
                  },
                  child: Text('Path Param')),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/envioParam/queryParam?nome=Enzo Zamineli&id=1&curso=jornada GetX');
                },
                child: Text('Query Param'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    '/envioParam/queryParam',
                    parameters: {
                      'nome': 'Enzo Zamineli',
                      'id': '1',
                      'curso': 'Jornada GetX',
                    },
                  );
                },
                child: Text('Query Param (Parametros)'),
              ),
            ],
          ),
        ));
  }
}
