import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';

class QueryParamPage extends StatelessWidget {
  const QueryParamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Query Param Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.parameters['nome'] ?? ''),
            Text(Get.parameters['id'] ?? ''),
            Text(Get.parameters['curso'] ?? ''),
          ],
        ),
      ),
    );
  }
}
