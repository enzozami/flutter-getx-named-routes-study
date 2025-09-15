import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class RouteMiddlewares extends GetMiddleware {
  RouteMiddlewares({super.priority});

// quando a rota for invocada
  @override
  GetPage? onPageCalled(GetPage? page) {
    debugPrint('Executando middleware onPageCalled');
    return super.onPageCalled(page);
  }

  @override
  Widget onPageBuilt(Widget page) {
    debugPrint('Executando middleware onPageBuilt');
    return Theme(
      data: ThemeData.dark(),
      child: page,
    );
  }

  @override
  RouteSettings? redirect(String? route) {
    if (route == '/middleware') {
      return RouteSettings(name: '/accessDenied');
    }
    return null;
  }

  @override
  void onPageDispose() {
    debugPrint('Executando middleware onPageDispose');

    super.onPageDispose();
  }
}
