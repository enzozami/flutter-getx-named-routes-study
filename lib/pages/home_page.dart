import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
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
          ],
        ),
      ),
    );
  }
}
