import 'package:flutter/material.dart';

class AppRoutes {
  static const String initialRoute = '/';
}

Route appGeneratedRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.initialRoute:
    default:
      return MaterialPageRoute(builder: (context)=> const Scaffold());
  }
}
