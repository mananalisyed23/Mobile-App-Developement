import 'package:flutter/material.dart';
import 'package:routing/screens/routes.dart';

void main() {
  runApp(Routing());
}

class Routing extends StatelessWidget {
  const Routing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: RoutesHelper.myRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return RoutesHelper.myGenerateRoutes(settings);
      },
    );
  }
}
