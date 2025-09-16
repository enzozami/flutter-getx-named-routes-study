import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_named_route/pages/nested_navigation/android_page.dart';
import 'package:get_named_route/pages/nested_navigation/apple_page.dart';

class HomeNestedNavigation extends StatelessWidget {
  final currentBottomIndex = 0.obs;

  HomeNestedNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nested Navigation'),
      ),
      bottomNavigationBar: Obx(
        () {
          return BottomNavigationBar(
            currentIndex: currentBottomIndex.value,
            onTap: (value) {
              currentBottomIndex(value);
              switch (value) {
                case 0:
                  Get.offNamed('/', id: 1);
                case 1:
                  Get.offNamed('/android', id: 1);
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.apple),
                label: 'Apple ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.android),
                label: 'Android',
              ),
            ],
          );
        },
      ),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: '/',
        onGenerateRoute: (settings) {
          Widget page;
          Transition transition;

          if (settings.name == '/') {
            page = ApplePage();
            transition = Transition.leftToRight;
          } else if (settings.name == '/android') {
            page = AndroidPage();
            transition = Transition.rightToLeft;
          } else {
            page = const Center(
              child: Text('Página não encontrada'),
            );
            transition = Transition.fade;
          }

          return GetPageRoute(
            page: () => page,
            transition: transition,
          );
        },
      ),
    );
  }
}
