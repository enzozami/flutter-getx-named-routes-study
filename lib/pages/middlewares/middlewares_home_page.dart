import 'package:flutter/material.dart';

class MiddlewaresHomePage extends StatelessWidget {
  MiddlewaresHomePage({super.key}) {
    debugPrint('Criando pagina Middleware');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Build pagina Middleware');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Middlewares Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Botão'),
        ),
      ),
    );
  }
}
