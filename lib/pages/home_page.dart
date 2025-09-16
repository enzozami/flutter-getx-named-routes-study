import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/inicial/page1');
              },
              child: Text('Inicial'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/paginaquenaoexiste');
              },
              child: Text('pagina que nao existe'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/envioParam');
              },
              child: Text('Envio de Params'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/middleware');
              },
              child: Text('Middlewares'),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('/nestedNavigation'),
              child: Text('Nested Navigation'),
            ),
          ],
        ),
      ),
    );
  }
}
