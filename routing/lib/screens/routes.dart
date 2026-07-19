import 'package:flutter/material.dart';
import 'package:routing/screens/homescreen.dart';
import 'package:routing/screens/profilescreen.dart';
import 'package:routing/screens/settingscreen.dart';

class RoutesHelper {
  static String home = '/';
  static const String profile = '/profile';
  static const String setting = '/setting';

  static Map<String, Homescreen Function(_)> myRoutes() {
    return {home: (_) => Homescreen()};
  }

  static MaterialPageRoute<dynamic> myGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case profile:
        {
          String name = settings.arguments as String;
          return MaterialPageRoute(
            builder: (context) {
              return Profilescreen(name: name);
            },
          );
        }
      case setting:
        {
          Map data = settings.arguments as Map;
          return MaterialPageRoute(
            builder: (_) =>
                Settingscreen(name: data['name'], email: data['email']),
          );
        }
    }
  }
}
